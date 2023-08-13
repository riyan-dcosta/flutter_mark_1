import 'package:flutter/material.dart';
import 'package:flutter_mark_1/features/encryption_page/presentation/widgets/decryption_widget.dart';
import 'package:flutter_mark_1/features/encryption_page/presentation/widgets/encryption_widget.dart';

class CryptoPage extends StatefulWidget {
  const CryptoPage({super.key});

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: EncryptionWidget()),
        Expanded(child: DecryptionWidget()),
      ],
    );
  }
}
