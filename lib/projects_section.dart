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
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                child: Wrap(
                  spacing: 32,
                  runSpacing: 32,
                  alignment: WrapAlignment.center,
                  children: [
                    ProjectCard(
                      title: "Leaf N' Lit 🌱📚",
                      screenshot: 'assets/leafnlit_screenshots/login_screen.png',

                      details: ProjectDetails(
                        title: "Leaf N' Lit 🌱📚",
                        url: "https://github.com/jfelic/leaf-n-lit",
                        description: "A Flutter mobile app combining reading tracking with virtual plant care.",
                        screenshots: [
                          'assets/leafnlit_screenshots/login_screen.png',
                          'assets/leafnlit_screenshots/registration_screen.png',
                          'assets/leafnlit_screenshots/session_screen.png',
                          'assets/leafnlit_screenshots/session_duration.png',
                          'assets/leafnlit_screenshots/active_session.png',
                          'assets/leafnlit_screenshots/garden_screen.png',
                          'assets/leafnlit_screenshots/library_screen.png',
                          'assets/leafnlit_screenshots/add_book_screen.png',
                          'assets/leafnlit_screenshots/search_book.png',
                        ],
                        technologies: ["Flutter", "Dart", "Google Books API", "Firebase Authentication", "Firebase Firestore"],
                      ),

                    ),
                    ProjectCard(
                      title: "Tomodoro Timer 🍅⏰",
                      screenshot: 'assets/tomodoro_screenshots/timer_screen.png',

                      details: ProjectDetails(
                        title: "Tomodoro Timer 🍅⏰",
                        url: "https://github.com/jfelic/PomodoroAndTasklistApp",
                        description: "A tomato-themed Pomodoro timer and task management app built with React Native. Combine focused work sessions with efficient task management.",
                        screenshots: [
                          'assets/tomodoro_screenshots/timer_screen.png',
                          'assets/tomodoro_screenshots/tasks_list.png',
                          'assets/tomodoro_screenshots/add_task.png',
                          'assets/tomodoro_screenshots/edit_task.png',
                          ],
                        technologies: ["React Native", "Expo"],
                      ),

                    ),

                    ProjectCard(
                      title: "JustPick 🎬🍿",
                      screenshot: 'assets/justpick_screenshots/home.png',

                      details: ProjectDetails(
                        title: "JustPick 🎬🍿",
                        url: 'https://github.com/jfelic/JustPick',
                        description: 
                        "🚧This project is under construction🚧",
                        screenshots: [
                          'assets/justpick_screenshots/home.png',
                          'assets/justpick_screenshots/host.png',
                        ],
                        technologies: ["SwiftUI", "Firebase Firestore"],
                      )
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
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 800,
                  maxHeight: 800,
                ),
                child: Stack(
                  children: [
                    SingleChildScrollView( // Allow scrolling if content is too long
                      child: widget.details,
                    ),
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

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: screenshots.map((screenshot) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        screenshot,
                        width: 200,
                        height: 500,
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                }).toList(),
              ),
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