import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 835,
          ),
          child: ExpansionTile(
            title: const SelectableText(
              "Experience",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: ElevatedButton(
                  onPressed: () async {
                    final url = Uri.parse('https://drive.google.com/file/d/1DjpTD1B_1RJeAPnUnqjtd1Rl_C3xAgH1/view?usp=sharing');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      // Handle error
                      print("Error downloading CV");
                    }
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 12.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      elevation: 4.0,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.download),
                        SizedBox(width: 8.0),
                        Text(
                          "Download CV",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const ExperienceContent(),
            ],
          ),
        ),
      ),
    );
  }
}

class ExperienceContent extends StatelessWidget {
  const ExperienceContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExperienceItem(
            company: "Plinkd",
            position: "Mobile App Development and UX/UI Design Intern",
            duration: "May 2024 - September 2024",
            description: "• Optimized API calls and improved average fps of the iOS application from 44 FPS to 60 FPS\n"
                "• Rewrote the API Manager class, optimizing data handling and improving maintainability, resulting in a 36% increase in application"
                    "performance (from an average of 44 FPS to 60 FPS)\n"
                "• Implemented functionality for users to link and manage social media accounts on their profiles, integrating with a Laravel-based" 
                    "backend for seamless data synchronization"
          ),
          SizedBox(height: 24),
          ExperienceItem(
            company: "Research Assistant",
            position: "Virtual Reality Programmer",
            duration: "August 2024 - Present",
            description: "• Utilizing Unity and C# to help Dr. Schoemann create a Virtual Reality gaming experience",
          ),
          SizedBox(height: 24),
          ExperienceItem(
            company: "Books In Every Bag",
            position: "Web Developer/Designer",
            duration: "March 2024 - Present",
            description: "• Developed and maintained the organization's website\n"
                "• Improved website functionality and user experience",
          ),
          SizedBox(height: 24),
          ExperienceItem(
            company: "Whole Foods Market",
            position: "Customer Service Representative/Store Receiver",
            duration: "November 2020 - June 2022",
            description: "• Provided customer service and managed store inventory",
          ),
        ],
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String company;
  final String position;
  final String duration;
  final String description;

  const ExperienceItem({
    super.key,
    required this.company,
    required this.position,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          company,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SelectableText(
          position,
          style: const TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
          ),
        ),
        SelectableText(
          duration,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 8),
        SelectableText(description),
      ],
    );
  }
}