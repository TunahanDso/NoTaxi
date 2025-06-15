import 'package:flutter/material.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Driver Screen')),
      body: const Center(child: Text('Welcome, Driver!')),
    );
  }
}
