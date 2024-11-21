import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp/header.dart';
import 'package:my_portfolio_webapp/skills_section.dart';
import 'package:my_portfolio_webapp/introduction_section.dart';
import 'package:my_portfolio_webapp/experience_section.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HeaderWidget(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IntroductionSection(),
                  SkillsSection(),
                  ExperienceSection(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}