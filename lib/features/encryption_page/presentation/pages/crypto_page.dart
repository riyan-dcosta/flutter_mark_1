import 'package:flutter/material.dart';
import 'package:flutter_mark_1/features/encryption_page/presentation/widgets/crypto_test_widget.dart';

class CryptoPage extends StatefulWidget {
  const CryptoPage({super.key});

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Encryption Page"),
      ),
      body: const SingleChildScrollView(
        child: CryptoTestWidget(),
      ),
    );
  }
}
