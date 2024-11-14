import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Header
      appBar: AppBar(
        title: const Text(
          "Julian Feliciano",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 227, 227, 227),
        actions: const [
          IconButton(
            icon: Icon(Icons.circle),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.circle),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.circle),
            onPressed: null,
          ),
        ],
      ),
      // Main Body
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: const Center(
          child: Text(
            'Content goes here',
            style: TextStyle(
              fontSize: 16,

            )
          ),
        ),
      ),
    );
  }
}