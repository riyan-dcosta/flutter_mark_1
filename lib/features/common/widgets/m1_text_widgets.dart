import 'package:flutter/material.dart';

class M1Text extends StatelessWidget {
  const M1Text({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          backgroundColor: Theme.of(context).cardColor,
        ),
      ),
    );
  }
}
