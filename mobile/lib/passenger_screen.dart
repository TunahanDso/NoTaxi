import 'package:flutter/material.dart';

class PassengerScreen extends StatelessWidget {
  const PassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Passenger Screen')),
      body: const Center(child: Text('Welcome, Passenger!')),
    );
  }
}
