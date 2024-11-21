import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp/skill_icon.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    const double skillIconPadding = 20.0;

    return Scaffold(
      backgroundColor: Colors.white,
      // Header
      appBar: AppBar(
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
      ),
      // Introduction section
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 600,
                    maxWidth: 800,
                  ),
                    child:  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SelectableText(
                            "Hello, and welcome!\n\n"
                            "I'm a senior Computer Science student based in Charleston, SC, specializing in Mobile Development."
                            "(In fact, this website was built using Flutter.) While mobile development has been my recent focus, my four years of academic training as a Computer Science student have equipped me with a solid foundation in Computer Science principles.\n\n"
                            "This means I’m not just a mobile developer—I’m a capable software engineer who can adapt and excel in a variety of development contexts.\n\n"
                            "Please take a look around, and thanks for visiting!",         
                          style: TextStyle(
                            fontSize: 16,
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        
// Skills Section
Center(
  child: Container(
    padding: const EdgeInsets.all(16.0),
    color: Colors.white,
    child: ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 835,
      ),
      child: const ExpansionTile(
        title: SelectableText(
          "Skills",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
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
              ],
            ),
          )
        ],
      ),
    ),
  ),
),
        
// Experience Section
Center(
  child: Container(
    padding: const EdgeInsets.all(16.0),
    color: Colors.white,
    child: ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 835,
      ),
      child: const ExpansionTile(
        title: SelectableText(
          "Experience",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  "Plinkd",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SelectableText(
                  "Mobile App Development and UX/UI Design Intern",
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SelectableText(
                  "May 2024 - September 2024",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                SelectableText("• Optimized API calls and improved average fps of the iOS application from 44 FPS to 60 FPS\n"
                     "• Utilized Swift and Kotlin for cross-platform mobile app development\n"
                     "• Collaborated with my peers to enhance the app UX/UI"),
                
                SizedBox(height: 24),
                
                SelectableText(
                  "Research Assistant",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SelectableText(
                  "Virtual Reality Programmer",
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SelectableText(
                  "August 2024 - Present",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                SelectableText("• Utilizing Unity and C# to help Dr. Schoemann create a Virtual Reality gaming experience"),
                
                SizedBox(height: 24),
                
                SelectableText(
                  "Books In Every Bag",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SelectableText(
                  "Web Developer/Designer",
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SelectableText(
                  "March 2024 - Present",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                SelectableText("• Developed and maintained the organization's website\n"
                     "• Improved website functionality and user experience"),
                
                SizedBox(height: 24),
                
                SelectableText(
                  "Whole Foods Market",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SelectableText(
                  "Customer Service Representative/Store Receiver",
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SelectableText(
                  "November 2020 - June 2022",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                SelectableText("• Provided customer service and managed store inventory"),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
),
          ],
        ),
      ),
    );
  }
}