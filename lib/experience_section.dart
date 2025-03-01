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
                      final url = Uri.parse(
                          'https://drive.google.com/file/d/1PW2pWh4ivAh-c347j54eatvnu6ZYELnv/view?usp=sharing');
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
            company: "Global Coast Survey",
            position: "Full Stack Engineer (Contract)",
            duration: "February 2025 - Present",
            description:
                "• Utilize the LAMP stack (Linux, Apache, MySQL, PHP), HTML/CSS/Bootstrap, and JavaScript (AJAX) to build and manage a contract platform that enables contractees and administrators to effectively manage contracts and view availabilty.\n"
                "• Revamped the website's styling by modernizing the UI design, replacing outdated visuals with a contemporary, responsive interface.\n"
                "• Contribute to ongoing enhancements and maintenance of the site to meet evolving business needs.",
          ),
          SizedBox(height: 24),
          ExperienceItem(
              company: "Plinkd",
              position: "Mobile App Development Intern - iOS",
              duration: "May 2024 - September 2024",
              description:
                  "• Optimized API calls and improved average fps of the iOS application from 44 FPS to 60 FPS\n"
                  "• Rewrote the API Manager class, optimizing data handling and improving maintainability, resulting in a 36% increase in application"
                  "performance (from an average of 44 FPS to 60 FPS)\n"
                  "• Implemented functionality for users to link and manage social media accounts on their profiles, integrating with a Laravel-based"
                  "backend for seamless data synchronization"),
          SizedBox(height: 24),
          ExperienceItem(
            company: "Research Assistant",
            position: "Virtual Reality Programmer",
            duration: "August 2024 - December 2025",
            description:
                "• Utilized C# and the Unity game engine to aid Dr. Schoemann in creating a Virtual Reality experience that provided social commentary on wage theft in the workplace",
          ),
          SizedBox(height: 24),
          ExperienceItem(
            company: "Books In Every Bag",
            position: "Web Developer/Designer",
            duration: "March 2024 - Present",
            description:
                "• Designed and developed a mission-critical website for Books in Every Bag using Squarespace CMS, creating an engaging digital presence for this early childhood literacy non-profit that delivers monthly books to children 5 years of age and under",
          ),
          SizedBox(height: 24),
          // ExperienceItem(
          //   company: "Whole Foods Market",
          //   position: "Store Receiver/Customer Service Representative",
          //   duration: "November 2020 - June 2022",
          //   description:
          //       "• Store Receiver: Coordinated with multiple vendors and managed daily product deliveries, ensuring accuracy of shipments and maintaining detailed receiving records while adhering to strict quality control standards\n"
          //       "• Customer Service Representative: Provided comprehensive customer service in a fast-paced retail environment, including processing transactions, handling refunds, resolving customer inquiries, and maintaining store cleanliness while consistently delivering excellent shopping experiences",
          // ),
        ],
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String position;
  final String company;
  final String duration;
  final String description;

  const ExperienceItem({
    super.key,
    required this.position,
    required this.company,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          position,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SelectableText(
          company,
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
