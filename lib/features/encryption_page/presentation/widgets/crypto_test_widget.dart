import 'package:flutter/material.dart';
import 'package:flutter_mark_1/core/crypto/crypto_core/crypto_core.dart';
import 'package:flutter_mark_1/features/common/widgets/m1_text_widgets.dart';
import 'package:encrypt_dart_package/encrypt_dart_package.dart';

class CryptoTestWidget extends StatefulWidget {
  const CryptoTestWidget({super.key});

  @override
  State<CryptoTestWidget> createState() => _CryptoTestWidgetState();
}

class _CryptoTestWidgetState extends State<CryptoTestWidget> {
  String _inputText = "";

  final String _encryptButtonText = "Encrypt and Decrypt Text";
  String _encryptedText = "";
  String? _decryptText;

  _encryptMessageButtonPress() {
    if (_inputText.isEmpty) {
      return null;
    }
    _encryptedText = SecretBase().encryptMessage(message: _inputText);
    _decryptText = SecretBase().decryptMessage(message: _encryptedText);
    setState(() {});
    return;
    _encryptedText = CryptoMessage().encryptMessage(message: _inputText);
    _decryptText = CryptoMessage().decryptMessage(message: _encryptedText);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(8.0)),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                _inputText = value;
              });
            },
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              label: M1Text(text: "Message To Encrypt"),
            ),
          ),
          M1Text(text: "Encrypted Text : $_encryptedText"),
          M1Text(text: "Decrypted Text : $_decryptText"),
          ElevatedButton(
              onPressed: _encryptMessageButtonPress,
              child: Text(_encryptButtonText))
        ],
      ),
    );
  }
}
