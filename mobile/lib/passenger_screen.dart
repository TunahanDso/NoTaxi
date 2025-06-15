import 'package:flutter/material.dart';

/// Screen displayed for the passenger interface.
class PassengerScreen extends StatelessWidget {
  const PassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Passenger'),
      ),
      body: const Center(
        child: Text('Passenger screen'),
      ),
    );
  }
}
