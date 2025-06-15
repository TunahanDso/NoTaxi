import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile/main.dart';

void main() {
  testWidgets('Navigation between Passenger and Driver screens', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Initially shows PassengerScreen
    expect(find.text('PassengerScreen'), findsOneWidget);
    expect(find.text('DriverScreen'), findsNothing);

    // Tap driver icon
    await tester.tap(find.byIcon(Icons.drive_eta));
    await tester.pumpAndSettle();

    // Now shows DriverScreen
    expect(find.text('DriverScreen'), findsOneWidget);
    expect(find.text('PassengerScreen'), findsNothing);
  });
}
