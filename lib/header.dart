import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const SelectableText(
        "Julian Feliciano",
        style: TextStyle(
          fontSize: 22,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}