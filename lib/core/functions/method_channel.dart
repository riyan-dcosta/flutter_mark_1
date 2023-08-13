import 'package:flutter/services.dart';

abstract class IPrivacyScreen {
  Future<void> enablePrivacyScreen();

  Future<void> disablePrivacyScreen();
}

class AppPrivacyScreenService extends IPrivacyScreen {

  static const platform = MethodChannel("security");

  // TODO : can try to add either where it will return true or PlatformException
  // TODO : debug is native code is called
  @override
  Future<void> disablePrivacyScreen() async {
    try {
      await platform.invokeMethod("disablePrivacyScreen");
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Future<void> enablePrivacyScreen() async {
    try {
      await platform.invokeMethod("enablePrivacyScreen");
    } on PlatformException catch (e) {
      print(e);
    }
  }
}
