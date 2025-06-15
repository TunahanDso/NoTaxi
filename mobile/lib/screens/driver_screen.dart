import 'package:flutter/material.dart';
import '../models/ride_request.dart';

class DriverScreen extends StatefulWidget {
  const DriverScreen({super.key});

  @override
  State<DriverScreen> createState() => _DriverScreenState();
}

class _DriverScreenState extends State<DriverScreen> {
  final TextEditingController _passengerController = TextEditingController();
  final TextEditingController _driverController = TextEditingController();
  final TextEditingController _originController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _pickTime() async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (time != null) {
      setState(() {
        _selectedTime = time;
      });
    }
  }

  void _submit() {
    final ride = RideRequest(
      passengerName: _passengerController.text,
      driverName: _driverController.text,
      origin: _originController.text,
      destination: _destinationController.text,
      time: _selectedTime,
    );
    print(ride);
  }

  @override
  void dispose() {
    _passengerController.dispose();
    _driverController.dispose();
    _originController.dispose();
    _destinationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _passengerController,
              decoration: const InputDecoration(labelText: 'Passenger Name'),
            ),
            TextField(
              controller: _driverController,
              decoration: const InputDecoration(labelText: 'Driver Name'),
            ),
            TextField(
              controller: _originController,
              decoration: const InputDecoration(labelText: 'Origin'),
            ),
            TextField(
              controller: _destinationController,
              decoration: const InputDecoration(labelText: 'Destination'),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text('Time: ${_selectedTime.format(context)}'),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _pickTime,
                  child: const Text('Pick Time'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submit,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
