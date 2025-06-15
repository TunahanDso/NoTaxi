import 'dart:convert';
import 'package:http/http.dart' as http;

const String _baseUrl = 'http://localhost:3000';

Future<void> sendRideRequest(RideRequest request) async {
  final uri = Uri.parse('$_baseUrl/api/ride');
  final response = await http.post(
    uri,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(request.toJson()),
  );

  if (response.statusCode >= 200 && response.statusCode < 300) {
    print('Yolculuk gonderildi');
  } else {
    throw Exception('Ride request failed: ${response.statusCode}');
  }
}
