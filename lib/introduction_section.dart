import 'package:flutter/material.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        color: const Color.fromARGB(255, 255, 255, 255),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 600,
            maxWidth: 800,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SelectableText(
                  "Hello, and welcome!\n\n"
                  "I'm a senior Computer Science student based in Charleston, SC, specializing in Mobile Development. "
                  "(In fact, this website was built using Flutter.) While mobile development has been my recent focus, my four years of academic training as a Computer Science student have equipped me with a solid foundation in Computer Science principles.\n\n"
                  "This means I'm not just a mobile developer—I'm a capable software engineer who can adapt and excel in a variety of development contexts.\n\n"
                  "Please take a look around, and thanks for visiting!",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}