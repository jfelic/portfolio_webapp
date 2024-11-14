import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF), 
      child: Column(
        children: [
          // Header
          Container(
            color: const Color.fromARGB(255, 231, 231, 231),
            child: const Row(
              children: [
                Text(
                  "Julian Feliciano",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ],
            )
          )
        ]
      ) 
    );
  }
}