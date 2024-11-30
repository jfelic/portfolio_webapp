import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

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
              "Projects",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                child: Wrap(
                  spacing: 32,
                  runSpacing: 32,
                  alignment: WrapAlignment.center,
                  children: [
                    ProjectCard(
                      title: "Leaf N' Lit 🌱📚",
                      screenshot: 'assets/library_screen.png',
                      details: ProjectDetails(
                        title: "Leaf N' Lit 🌱📚",
                        url: "https://github.com/jfelic/leaf-n-lit",
                        description: "A Flutter mobile app combining reading tracking with virtual plant care.",
                        screenshots: ['assets/project1_1.png', 'assets/project1_2.png'],
                        technologies: ["Flutter", "Dart", "Google Books API", "Firebase Authentication", "Firebase Firestore"],
                      ),
                    ),
                    ProjectCard(
                      title: "Project 2",
                      screenshot: 'assets/project2.png',
                      details: ProjectDetails(
                        title: "Project 2",
                        url: "https://github.com/jfelic/project2",
                        description: "Detailed description of Project 2",
                        screenshots: ['assets/project2_1.png', 'assets/project2_2.png'],
                        technologies: ["React", "JavaScript"],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String title;
  final String screenshot;
  final ProjectDetails details;

  const ProjectCard({
    super.key,
    required this.title,
    required this.screenshot,
    required this.details,
  });

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              child: Stack(
                children: [
                  widget.details,
                  Positioned(
                    right: 8,
                    top: 8,
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.identity()
            ..scale(_isHovering ? 1.05 : 1.0),
          child: Card(
            elevation: _isHovering ? 8.0 : 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  height: 200,
                  child: Image.asset(
                    widget.screenshot,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectDetails extends StatelessWidget {
  final String title;
  final String url;
  final String description;
  final List<String> screenshots;
  final List<String> technologies;

  const ProjectDetails({
    super.key,
    required this.title,
    required this.url,
    required this.description,
    required this.screenshots,
    required this.technologies,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () async {
                final Uri url = Uri.parse(this.url);
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              child: Text(
                url,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(description),
            const SizedBox(height: 16),
            const Text(
              "Screenshots",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: screenshots.map((screenshot) {
                return Image.asset(screenshot, width: 100, height: 100);
              }).toList(),
            ),
            const SizedBox(height: 16),
            const Text(
              "Technologies Used",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: technologies.map((tech) {
                return Chip(label: Text(tech));
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}