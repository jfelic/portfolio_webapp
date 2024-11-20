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
                        child: Text(
                          "Hello,\n\n"
                          "I'm a Computer Science student currently based out of Charleston, SC. I'm currently specializing in Mobile Development (hence why this webpage was built using Flutter), but my interests are everything software.\n\n"
                                
                          "I've focused on developing as an Engineer and Computer Scientist during my educational career rather than just Mobile Development, and this is reflected in the variety of my projects. Take a look if you have the time, thank you!",
                                
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
        title: Text(
          "Skills",
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
                Text(
                  "Languages",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("• Dart/Flutter\n• Python\n• Java\n• JavaScript"),
                
                SizedBox(height: 16),
                
                Text(
                  "Technologies",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("• Git\n• Firebase\n• REST APIs\n• SQL"),
                
                SizedBox(height: 16),
                
                Text(
                  "Other",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("• Agile Development\n• Unit Testing\n• CI/CD\n• Technical Writing"),
              ],
            ),
          ),
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
        title: Text(
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
                Text(
                  "Plinkd",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Mobile App Development and UX/UI Design Intern",
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  "May 2024 - September 2024",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                Text("• Optimized API calls and improved average fps of the iOS application from 44 FPS to 60 FPS\n"
                     "• Utilized Swift and Kotlin for cross-platform mobile app development\n"
                     "• Collaborated with my peers to enhance the app UX/UI"),
                
                SizedBox(height: 24),
                
                Text(
                  "Research Assistant",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Virtual Reality Programmer",
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  "August 2024 - Present",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                Text("• Utilizing Unity and C# to help Dr. Schoemann create a Virtual Reality gaming experience"),
                
                SizedBox(height: 24),
                
                Text(
                  "Books In Every Bag",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Web Developer/Designer",
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  "March 2024 - Present",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                Text("• Developed and maintained the organization's website\n"
                     "• Improved website functionality and user experience"),
                
                SizedBox(height: 24),
                
                Text(
                  "Whole Foods Market",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Customer Service Representative/Store Receiver",
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  "November 2020 - June 2022",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                Text("• Provided customer service and managed store inventory"),
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