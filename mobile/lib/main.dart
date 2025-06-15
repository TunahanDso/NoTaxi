import 'package:flutter/material.dart';
import 'driver_screen.dart';
import 'passenger_screen.dart';

void main() {
  runApp(const MyApp());
}

/// Root widget that sets up the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoTaxi Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // Start on the passenger screen. Other screens can be reached via routing.
      home: const PassengerScreen(),
    );
  }
}
