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
                  "I'm a senior Computer Science student based in Charleston, SC, specializing in Full Stack Web Development and Mobile Development. (Fun fact: I built this website using Flutter.)\n\n"
                  "My four years of academic training as a Computer Science student have equipped me with a solid foundation in Computer Science/Software Engineering principles."
                  "This means that even if I don't have experience in a specific technology, I can adapt and excel in a variety of development contexts.\n\n"
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
