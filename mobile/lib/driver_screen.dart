import 'package:flutter/material.dart';

/// Screen displayed for the driver interface.
class DriverScreen extends StatelessWidget {
  const DriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver'),
      ),
      body: const Center(
        child: Text('Driver screen'),
      ),
    );
  }
}
