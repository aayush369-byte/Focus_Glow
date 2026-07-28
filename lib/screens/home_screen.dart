import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FocusFlow Dashboard'),
        backgroundColor: const Color(0xFF5B3FD4),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Welcome to your Home Dashboard!\n(We will build this UI next)',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}