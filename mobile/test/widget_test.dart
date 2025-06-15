import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile/main.dart';

void main() {
  testWidgets('Navigation to PassengerScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Passenger Screen'), findsNothing);
    await tester.tap(find.text('Passenger'));
    await tester.pumpAndSettle();

    expect(find.text('Passenger Screen'), findsOneWidget);
  });
}
