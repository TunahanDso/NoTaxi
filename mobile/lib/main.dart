import 'package:flutter/material.dart';

import 'screens/driver_screen.dart';
import 'screens/passenger_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoTaxi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'NoTaxi'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  void _openPassenger(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const PassengerScreen()),
    );
  }

  void _openDriver(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const DriverScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _openPassenger(context),
              child: const Text('Passenger Screen'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _openDriver(context),
              child: const Text('Driver Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
