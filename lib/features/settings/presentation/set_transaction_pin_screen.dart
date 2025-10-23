import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_themes.dart';
import '../../../../core/theme/bloc/theme_bloc.dart';
import '../../login/data/mfa/mfa_datasource.dart';
import '../../../../core/storage/preferences_manager.dart';
import 'dart:typed_data';
import 'dart:convert';
import '../../../core/util/crypto/aes_gcm_util.dart';
import '../../login/data/mfa/transaction_pin_datasource.dart';

class SetTransactionPinScreen extends StatefulWidget {
  const SetTransactionPinScreen({super.key});

  @override
  State<SetTransactionPinScreen> createState() =>
      _SetTransactionPinScreenState();
}

class _SetTransactionPinScreenState extends State<SetTransactionPinScreen> {
  late final MfaDataSource _mfaDs;
  bool _loading = true;
  List<MfaOption> _options = [];
  MfaOption? _selected;
  bool _submitting = false;
  // Individual edit box controllers for passcode (6 digits)
  final List<TextEditingController> _passcodeControllers =
      List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _passcodeFocusNodes =
      List.generate(6, (index) => FocusNode());

  // Individual edit box controllers for transaction PIN (6 digits)
  final List<TextEditingController> _pinControllers =
      List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _pinFocusNodes =
      List.generate(6, (index) => FocusNode());

  // Individual edit box controllers for confirm transaction PIN (6 digits)
  final List<TextEditingController> _confirmPinControllers =
      List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _confirmPinFocusNodes =
      List.generate(6, (index) => FocusNode());

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _mfaDs = MfaDataSourceImpl(client: http.Client());
    _loadMfa();
  }

  @override
  void dispose() {
    // Dispose passcode controllers and focus nodes
    for (var controller in _passcodeControllers) {
      controller.dispose();
    }
    for (var node in _passcodeFocusNodes) {
      node.dispose();
    }

    // Dispose PIN controllers and focus nodes
    for (var controller in _pinControllers) {
      controller.dispose();
    }
    for (var node in _pinFocusNodes) {
      node.dispose();
    }

    // Dispose confirm PIN controllers and focus nodes
    for (var controller in _confirmPinControllers) {
      controller.dispose();
    }
    for (var node in _confirmPinFocusNodes) {
      node.dispose();
    }

    super.dispose();
  }

  Future<void> _loadMfa() async {
    try {
      final list = await _mfaDs.fetchMfaList();
      setState(() {
        _options = list;
        _selected = list.isNotEmpty ? list.first : null;
        _loading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _loading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('Failed to load MFA: $e'),
            backgroundColor: Colors.red),
      );
    }
  }

  Widget _buildPasscodeFields(List<TextEditingController> controllers,
      List<FocusNode> focusNodes, String label) {
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            6,
            (index) => SizedBox(
              width: 45,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  gradient: isDarkMode
                      ? AppThemes.darkInputGradient
                      : AppThemes.lightInputGradient,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isDarkMode
                        ? AppColors.loaderPrimaryDark
                        : AppColors.loaderPrimaryLight,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: controllers[index],
                  focusNode: focusNodes[index],
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  obscureText: true,
                  obscuringCharacter: '•',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  decoration: const InputDecoration(
                    counterText: "",
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  ),
                  onChanged: (value) {
                    if (value.isNotEmpty && index < 5) {
                      focusNodes[index + 1].requestFocus();
                    } else if (value.isEmpty && index > 0) {
                      focusNodes[index - 1].requestFocus();
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _submit() async {
    if (_selected == null) return;
    setState(() => _submitting = true);
    try {
      await _mfaDs.setMfa(_selected!.mfaId);
      final prefs = await PreferencesManager.getInstance();
      await prefs.setMfaId(_selected!.mfaId);
      await prefs.setMfaName(_selected!.name);
      debugPrint(
          "🔐 Set MFA ID: ${_selected!.mfaId} and MFA Name: ${_selected!.name}");
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('MFA set successfully')),
      );
      Navigator.of(context).pop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('Failed to set MFA: $e'),
            backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    return Container(
      decoration: AppThemes.scaffoldBackgroundDecoration(
          isDark: isDarkMode, isPrimary: true),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: const Text('Update MFA')),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: _loading
                    ? const Padding(
                        padding: EdgeInsets.symmetric(vertical: 60),
                        child: Center(child: CircularProgressIndicator()),
                      )
                    : Card(
                        elevation: 3,
                        color: const Color(0xFFC4E1E6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor:
                                        theme.primaryColor.withOpacity(0.12),
                                    child: Icon(Icons.shield_rounded,
                                        color: theme.primaryColor),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Set transaction verification',
                                            style: theme.textTheme.titleMedium),
                                        const SizedBox(height: 2),
                                        Text(
                                            'Choose a simple way to confirm transactions',
                                            style: theme.textTheme.bodySmall),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Text('Verification method',
                                  style: theme.textTheme.labelLarge),
                              const SizedBox(height: 8),
                              DropdownButtonFormField<MfaOption>(
                                initialValue: _selected,
                                isExpanded: true,
                                items: _options
                                    .map((e) => DropdownMenuItem<MfaOption>(
                                          value: e,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                  e.mfaId == 1
                                                      ? Icons.pin
                                                      : Icons.face_6,
                                                  size: 18),
                                              const SizedBox(width: 8),
                                              Flexible(
                                                fit: FlexFit.loose,
                                                child: Text(
                                                  e.name,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ))
                                    .toList(),
                                onChanged: (v) => setState(() => _selected = v),
                                decoration: const InputDecoration(
                                  hintText: 'Select a method',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.info_outline,
                                      size: 16, color: theme.hintColor),
                                  const SizedBox(width: 6),
                                  Expanded(
                                    child: Text(
                                        'You can change this anytime in Settings.',
                                        style: theme.textTheme.bodySmall),
                                  ),
                                ],
                              ),
                              if (_selected?.mfaId == 1) ...[
                                const SizedBox(height: 16),
                                Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      _buildPasscodeFields(
                                          _passcodeControllers,
                                          _passcodeFocusNodes,
                                          'Passcode (6 digits)'),
                                      const SizedBox(height: 20),
                                      _buildPasscodeFields(
                                          _pinControllers,
                                          _pinFocusNodes,
                                          'Transaction PIN (6 digits)'),
                                      const SizedBox(height: 20),
                                      _buildPasscodeFields(
                                          _confirmPinControllers,
                                          _confirmPinFocusNodes,
                                          'Confirm Transaction PIN (6 digits)'),
                                    ],
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Builder(builder: (ctx) {
          final bottomInset = MediaQuery.of(ctx).viewInsets.bottom;
          return SafeArea(
            top: false,
            child: Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16 + bottomInset),
              color: Colors.transparent,
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _submitting
                      ? null
                      : () async {
                          if (_selected?.mfaId == 1) {
                            // Validate all passcode fields
                            if (!_validatePasscode(_passcodeControllers) ||
                                !_validatePasscode(_pinControllers) ||
                                !_validatePasscode(_confirmPinControllers)) {
                              ScaffoldMessenger.of(ctx).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'Please enter all 6 digits for each field')),
                              );
                              return;
                            }

                            // Check if PINs match
                            final pin =
                                _getPasscodeFromControllers(_pinControllers);
                            final confirmPin = _getPasscodeFromControllers(
                                _confirmPinControllers);
                            if (pin != confirmPin) {
                              ScaffoldMessenger.of(ctx).showSnackBar(
                                const SnackBar(
                                    content: Text('PINs do not match')),
                              );
                              return;
                            }

                            await _submitTransactionPin(ctx);
                          } else {
                            await _submit();
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(ctx).primaryColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: _submitting
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                              strokeWidth: 2, color: Colors.white),
                        )
                      : const Text('Set'),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  String _getPasscodeFromControllers(List<TextEditingController> controllers) {
    return controllers.map((controller) => controller.text).join();
  }

  bool _validatePasscode(List<TextEditingController> controllers) {
    final passcode = _getPasscodeFromControllers(controllers);
    if (passcode.length != 6) return false;
    final regex = RegExp(r'^\d{6}$');
    return regex.hasMatch(passcode);
  }

  Future<void> _submitTransactionPin(BuildContext context) async {
    try {
      setState(() => _submitting = true);
      final prefs = await PreferencesManager.getInstance();
      final sessionKey = prefs.decryptedSessionKey ?? '';
      if (sessionKey.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Missing session key. Please login again.')),
        );
        return;
      }
      // Convert session key to proper AES key length (32 bytes for AES-256)
      final sessionKeyBytes = utf8.encode(sessionKey);
      final keyBytes = Uint8List(32);
      for (int i = 0; i < 32; i++) {
        keyBytes[i] = sessionKeyBytes[i % sessionKeyBytes.length];
      }
      final pin = _getPasscodeFromControllers(_pinControllers);
      final confirmPin = _getPasscodeFromControllers(_confirmPinControllers);
      final encPin = AesGcmUtil.encryptBase64(pin, keyBytes);
      final encConfirmPin = AesGcmUtil.encryptBase64(confirmPin, keyBytes);

      // Use existing login passcode encryption from Preferences (we saved encrypted during login)
      final encryptedPasscode = prefs.userPin ?? '';
      if (encryptedPasscode.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Missing passcode. Please login again.')),
        );
        return;
      }

      // Ensure MFA is set to the selected method before setting the transaction PIN
      final mfaDs = MfaDataSourceImpl(client: http.Client());
      await mfaDs.setMfa(_selected!.mfaId);
      await prefs.setMfaId(_selected!.mfaId);
      await prefs.setMfaName(_selected!.name);
      debugPrint(
          "🔐 Set Transaction PIN - MFA ID: ${_selected!.mfaId} and MFA Name: ${_selected!.name}");

      final ds = TransactionPinDataSourceImpl(client: http.Client());
      await ds.setTransactionPin(
        encryptedPin: encPin,
        encryptedConfirmPin: encConfirmPin,
        encryptedPasscode: encryptedPasscode,
      );
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Transaction PIN set successfully')),
      );
      Navigator.of(context).pop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to set transaction PIN: $e')),
      );
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }
}
