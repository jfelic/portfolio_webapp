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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: const [
          Image(
            image: AssetImage('assets/github.png'),
            height: 25,
            width: 25,
          ),

          SizedBox(width: 10),

          Image(
            image: AssetImage('assets/linkedin.png'),
            height: 25,
            width: 25,
          ),

          SizedBox(width: 10),

          Image(
            image: AssetImage('assets/email.png'),
            height: 25,
            width: 25,
          ),

          SizedBox(width: 10),

        ],
      ),
      // Main Body
      body: Container(
        padding: const EdgeInsets.all(16.0),
          color: const Color.fromARGB(255, 255, 255, 255),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello, World!',
                style: TextStyle(
                  fontSize: 16,
                )
              ),

              SizedBox(width: 200),

              ClipOval(
                child: Image(
                  image: AssetImage('assets/profilePlaceholder.jpg'),
                  width: 250,
                  height: 250,
                ),
              ),
            ],
          ),
      ),
    );
  }
}