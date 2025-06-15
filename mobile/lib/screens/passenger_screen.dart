import 'package:flutter/material.dart';

class PassengerScreen extends StatelessWidget {
  const PassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yolculuk Arama Ekranı'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Ara'),
        ),
      ),
    );
  }
}
