import 'package:encrypt/encrypt.dart';
import 'package:flutter_mark_1/core/constants/const_string.dart';
import 'package:flutter_mark_1/core/crypto/crypto_core/crypto_core.dart';

class EncryptPackage {
  String encryptMessage({required String message}) {
    final key = Key.fromUtf8(ConstantString.cliKey);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));
    return encrypter.encrypt(message, iv: iv).base64;
  }

  String decryptMessage({required String message}) {
    final key = Key.fromUtf8(ConstantString.cliKey);
    final iv = IV.fromLength(16);
    final decrypter = Encrypter(AES(key));
    return decrypter.decrypt(Encrypted.from64(message), iv: iv);
  }
}
