import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0, // No shadow
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset(
                'assets/images/text-logo.png',
                width: 50,
              )), // Left side logo (replace with your image)
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.heart_broken, size: 28), // First icon
            onPressed: () {
              // Action for search icon
            },
          ),
          IconButton(
            icon: const Icon(Icons.message, size: 28), // Second icon
            onPressed: () {
              // Action for notifications icon
            },
          ),
        ],
      ),
      body: const SafeArea(
        child: Text(""),
      ),
    );
  }
}
