import 'package:flutter/material.dart';

class RideRequest {
  final String origin;
  final String destination;
  final TimeOfDay time;
  final int? seatCount;

  RideRequest({
    required this.origin,
    required this.destination,
    required this.time,
    this.seatCount,
  });
}
