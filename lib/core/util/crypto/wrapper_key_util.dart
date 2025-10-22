import 'dart:convert';
import 'dart:typed_data';

class WrapperKeyUtil {
  // reference: userRef, pin: stringified userId
  static String getWrapperKey(String reference, String pin) {
    final modstr = reference.split('');
    int evenCount = 0;
    int oddCount = 0;
    for (int i = 0; i < pin.length; i++) {
      final n = i + 1;
      final runeCode = pin.codeUnitAt(i);
      if (n % 2 == 0) {
        evenCount++;
        final j = reference.length - evenCount;
        modstr[j] = String.fromCharCode(runeCode);
      } else {
        final j = oddCount;
        modstr[j] = String.fromCharCode(runeCode);
        oddCount++;
      }
    }
    return modstr.join();
  }

  static Uint8List wrapperKeyToBytes(String wrapperKey) {
    // Use UTF-8 bytes of wrapper key as symmetric key material
    final keyBytes = utf8.encode(wrapperKey);
    
    // AES-GCM requires keys to be 16, 24, or 32 bytes (128, 192, or 256 bits)
    // Create a 32-byte key by repeating the key bytes and truncating
    final result = Uint8List(32);
    for (int i = 0; i < 32; i++) {
      result[i] = keyBytes[i % keyBytes.length];
    }
    
    // Debug logging
    print('🔐 WrapperKeyUtil: wrapperKey length: ${wrapperKey.length}');
    print('🔐 WrapperKeyUtil: keyBytes length: ${keyBytes.length}');
    print('🔐 WrapperKeyUtil: final key length: ${result.length} bytes (${result.length * 8} bits)');
    
    return result;
  }
}


