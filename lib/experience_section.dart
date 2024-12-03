import 'package:flutter/material.dart';
import 'dart:html' as html;

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  void downloadCV() {
    final anchor = html.AnchorElement()
      ..href = 'assets/cv.pdf'
      ..download = 'JulianFeliciano_CV.pdf'
      ..style.display = 'none';

    html.document.body?.children.add(anchor);

    anchor.click();
    anchor.remove();
  }

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
                    onPressed: downloadCV,
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
            description: "• Optimized API calls, enhancing the iOS application performance from 44 FPS to 60 FPS using expertise in Swift\n"
                "• Utilized Swift and Kotlin for cross-platform mobile app development, incorporating routine technical discussions and design evaluations\n"
                "• Collaborated with team members to transform app UX/UI, involving active participation in design and code reviews",
          ),
          SizedBox(height: 24),
          ExperienceItem(
            company: "Research Assistant",
            position: "Virtual Reality Programmer",
            duration: "August 2024 - Present",
            description: "• Utilized Unity and C# to support Dr. Schoemann in developing a Virtual Reality gaming experience, employing software development skills applicable to interactive applications",
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