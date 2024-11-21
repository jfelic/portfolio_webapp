import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillIcon extends StatelessWidget {
  final String assetPath;
  final String label;

  const SkillIcon({
    super.key,
    required this.assetPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          assetPath,
          height: 50,
          width: 50,
        ),
        const SizedBox(height: 10),
        SelectableText(label),
      ],
    );
  }
}