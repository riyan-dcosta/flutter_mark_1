import 'package:flutter_mark_1/core/crypto/crypto_core/encrypt_package.dart';

abstract class ICryptoMessage{
  String encryptMessage({required String message});
  String decryptMessage({required String message});

}

class CryptoMessage extends ICryptoMessage{

  @override
  String encryptMessage({required String message}) {
    return EncryptPackage().encryptMessage(message: message);
  }

  @override
  String decryptMessage({required String message}) {
    return EncryptPackage().decryptMessage(message: message);
  }


}