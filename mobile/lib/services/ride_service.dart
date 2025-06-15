import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/ride_data.dart';

class RideService {
  final http.Client client;
  RideService({http.Client? client}) : client = client ?? http.Client();

  Future<bool> sendRideRequest(RideData data) async {
    final uri = Uri.parse('https://example.com/api/rides');
    try {
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(data.toJson()),
      );
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      rethrow;
    }
  }
}
