import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile/screens/passenger_screen.dart';

void main() {
  testWidgets('Passenger screen shows title and button', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: PassengerScreen()));

    expect(find.text('Passenger Screen'), findsOneWidget);
    expect(find.text('Request Ride'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
