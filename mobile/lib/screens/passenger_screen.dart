import 'package:flutter/material.dart';

class PassengerScreen extends StatelessWidget {
  const PassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        color: Colors.grey,
        child: const Center(
          child: Text('Buraya harita gelecek'),
        ),
      ),
    );
  }
}
