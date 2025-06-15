import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class RideRequest {
  final String origin;
  final String destination;
  final TimeOfDay time;

  RideRequest({
    required this.origin,
    required this.destination,
    required this.time,
  });

  String get formattedTime =>
      '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';

  Map<String, dynamic> toJson() => {
        'origin': origin,
        'destination': destination,
        'time': formattedTime,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoTaxi Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RideRequestPage(),
    );
  }
}

class RideRequestPage extends StatefulWidget {
  const RideRequestPage({super.key});

  @override
  State<RideRequestPage> createState() => _RideRequestPageState();
}

class _RideRequestPageState extends State<RideRequestPage> {
  final TextEditingController originController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();
  TimeOfDay? selectedTime;

  Future<void> _pickTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  void _sendToServer(RideRequest request) {
    // Placeholder for actual server call
    print('Sending ride request: ${request.toJson()}');
  }

  void _submit() {
    if (selectedTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a time')),
      );
      return;
    }
    final request = RideRequest(
      origin: originController.text,
      destination: destinationController.text,
      time: selectedTime!,
    );

    // Print form fields to console
    print('Form Data: ${request.toJson()}');

    _sendToServer(request);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ride Request')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: originController,
              decoration: const InputDecoration(labelText: 'Origin'),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: destinationController,
              decoration: const InputDecoration(labelText: 'Destination'),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text(selectedTime == null
                      ? 'No time selected'
                      : 'Time: ${selectedTime!.hour.toString().padLeft(2, '0')}:${selectedTime!.minute.toString().padLeft(2, '0')}'),
                ),
                ElevatedButton(
                  onPressed: _pickTime,
                  child: const Text('Select Time'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: _submit,
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
