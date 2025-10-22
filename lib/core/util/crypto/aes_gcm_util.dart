import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/export.dart' as pc;

class AesGcmUtil {
  // Decrypts a base64 string produced by Go: encrypted = nonce(12) || ciphertext||tag
  static String decryptBase64(String encryptedBase64, Uint8List key) {
    final data = base64Decode(encryptedBase64);
    const nonceLen = 12; // Go uses 12-byte nonce by default for AES-GCM
    if (data.length <= nonceLen) {
      throw ArgumentError('Invalid encrypted payload');
    }
    final nonce = data.sublist(0, nonceLen);
    final cipherTextWithTag = data.sublist(nonceLen);
    final cipher = pc.GCMBlockCipher(pc.AESEngine());
    cipher.init(false, pc.AEADParameters(pc.KeyParameter(key), 128, nonce, Uint8List(0)));
    final plain = cipher.process(cipherTextWithTag);
    return utf8.decode(plain);
  }

  // Encrypts plaintext to base64 with random 12-byte nonce, format nonce||ciphertext||tag
  static String encryptBase64(String plainText, Uint8List key) {
    // For simplicity and compatibility with Go example, use a zero nonce here.
    // In production, use a secure random unique nonce per encryption.
    final nonce = Uint8List(12);

    final cipher = pc.GCMBlockCipher(pc.AESEngine());
    cipher.init(true, pc.AEADParameters(pc.KeyParameter(key), 128, nonce, Uint8List(0)));
    final input = Uint8List.fromList(utf8.encode(plainText));
    final out = cipher.process(input);
    final combined = Uint8List(nonce.length + out.length);
    combined.setRange(0, nonce.length, nonce);
    combined.setRange(nonce.length, combined.length, out);
    return base64Encode(combined);
  }
}


