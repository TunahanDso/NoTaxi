import 'package:flutter/material.dart';

/// Screen displayed for the passenger interface.
class PassengerScreen extends StatelessWidget {
  const PassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yolculuk Arama Ekranı'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Nereden?'),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: const InputDecoration(labelText: 'Nereye?'),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: const InputDecoration(labelText: 'Saat'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Ara'),
            ),
            const SizedBox(height: 16),
            Container(
              height: 250,
              color: Colors.grey,
              alignment: Alignment.center,
              child: const Text('Buraya harita gelecek'),
            ),
          ],
        ),
      ),
    );
  }
}
