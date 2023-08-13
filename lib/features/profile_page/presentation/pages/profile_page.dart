import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static const _appTitle = "Profile Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_appTitle),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: const Column(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("User Name"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}
