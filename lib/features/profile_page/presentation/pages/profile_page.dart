import 'package:flutter/material.dart';
import 'package:flutter_mark_1/core/functions/method_channel.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static const _appTitle = "Profile Page";
  bool _privacyScreen = false;

  void _privacyScreenSwitched() {
    _privacyScreen = !_privacyScreen;
    setState(() {});
    _toggleNativePrivacyScreen(enable:_privacyScreen);
  }
  Future<void> _toggleNativePrivacyScreen({required bool enable})async{
    if(enable){
        await AppPrivacyScreenService().disablePrivacyScreen();
    }else{
        await AppPrivacyScreenService().enablePrivacyScreen();

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_appTitle),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("User Name"),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
            ),
            ListTile(
              title: const Text("Privacy Screen"),
              trailing: Switch(
                value: _privacyScreen,
                // fixme : wont toggle switch if clicked on the switch button.
                onChanged: (value) => _privacyScreenSwitched,
              ),
              onTap: _privacyScreenSwitched,
            )
          ],
        ),
      ),
    );
  }
}
