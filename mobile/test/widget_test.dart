// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile/main.dart';

void main() {
  testWidgets('Driver screen UI elements appear', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that all required fields exist.
    expect(find.text('Başlangıç konumu'), findsOneWidget);
    expect(find.text('Varış konumu'), findsOneWidget);
    expect(find.text('Kalkış saati'), findsOneWidget);
    expect(find.text('Boş koltuk sayısı'), findsOneWidget);
    expect(find.text('Yolculuk Bildir'), findsOneWidget);
  });
}
