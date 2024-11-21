import 'package:flutter/material.dart';

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
          child: const ExpansionTile(
            title: SelectableText(
              "Experience",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              ExperienceContent(),
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
                "• Utilized Swift and Kotlin for cross-platform mobile app development\n"
                "• Collaborated with my peers to enhance the app UX/UI",
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