import 'package:flutter/material.dart';

class RideRequest {
  final String passengerName;
  final String driverName;
  final String origin;
  final String destination;
  final TimeOfDay time;

  RideRequest({
    required this.passengerName,
    required this.driverName,
    required this.origin,
    required this.destination,
    required this.time,
  });

  @override
  String toString() {
    final formattedTime =
        '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
    return 'RideRequest(passengerName: $passengerName, driverName: $driverName, origin: $origin, destination: $destination, time: $formattedTime)';
  }
}
