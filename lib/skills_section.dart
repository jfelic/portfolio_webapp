import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp/skill_icon.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

const double skillIconPadding = 20.0;

class _SkillsSectionState extends State<SkillsSection> {
  final ScrollController _skillsScrollController = ScrollController();
  
  @override
  void dispose() {
    _skillsScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.white,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 835,
        ),
        child: ExpansionTile(
          title: const SelectableText(
            "Skills",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            Scrollbar(
              controller: _skillsScrollController,
              thumbVisibility: true,
              interactive: true,
              child: SingleChildScrollView(
                controller: _skillsScrollController,
                scrollDirection: Axis.horizontal,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/Swift.svg',
                        label: 'Swift',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/Dart.svg',
                        label: 'Dart',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/Flutter.svg',
                        label: 'Flutter',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/React.svg',
                        label: 'React Native',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/Python.svg',
                        label: 'Python',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/Java.svg',
                        label: 'Java',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/JavaScript.svg',
                        label: 'JavaScript',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/Next.js.svg',
                        label: 'Next.js',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/Git.svg',
                        label: 'Git',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/Firebase.svg',
                        label: 'Firebase',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/CSharp.svg',
                        label: 'C#',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(skillIconPadding),
                      child: SkillIcon(
                        assetPath: 'assets/Unity.svg',
                        label: 'Unity',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}