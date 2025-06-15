import 'package:flutter/material.dart';

/// Entry point of the NoTaxi application.
void main() {
  runApp(const NoTaxiApp());
}

/// Root widget for the application.
class NoTaxiApp extends StatelessWidget {
  const NoTaxiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoTaxi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const RoleTabsScreen(),
    );
  }
}

/// Displays the tabbed interface for passenger and driver roles.
class RoleTabsScreen extends StatelessWidget {
  const RoleTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('NoTaxi'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'YOLCU'),
              Tab(text: 'SÜRÜCÜ'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Yolcu İçeriği')),
            Center(child: Text('Sürücü İçeriği')),
          ],
        ),
      ),
    );
  }
}

