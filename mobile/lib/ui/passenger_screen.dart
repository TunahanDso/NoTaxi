import 'package:flutter/material.dart';

import '../models/ride_data.dart';
import '../services/ride_service.dart';

class PassengerScreen extends StatefulWidget {
  const PassengerScreen({super.key});

  @override
  State<PassengerScreen> createState() => _PassengerScreenState();
}

class _PassengerScreenState extends State<PassengerScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fromController = TextEditingController();
  final _toController = TextEditingController();
  final _service = RideService();

  @override
  void dispose() {
    _fromController.dispose();
    _toController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final data = RideData(
      from: _fromController.text,
      to: _toController.text,
      isDriver: false,
    );
    bool success;
    try {
      success = await _service.sendRideRequest(data);
    } catch (_) {
      success = false;
    }
    if (!mounted) return;
    final snackBar = SnackBar(
      content: Text(
        success
            ? 'Yolculuk başarıyla bildirildi'
            : 'Yolculuk bildirilemedi',
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Passenger')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _fromController,
                decoration: const InputDecoration(labelText: 'From'),
                validator: (v) => v == null || v.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _toController,
                decoration: const InputDecoration(labelText: 'To'),
                validator: (v) => v == null || v.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submit,
                child: const Text('Send'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
