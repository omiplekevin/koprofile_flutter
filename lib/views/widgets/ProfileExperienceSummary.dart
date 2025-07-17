import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:koprofile_flutter/views/widgets/micro/ExperienceCell.dart';

class ProfileExperienceSummary extends StatelessWidget {
  const ProfileExperienceSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final LinkedHashMap<String, List<String>> experienceMap =
        LinkedHashMap<String, List<String>>.from({
          "Languages": [
            "images/java_icon.png",
            "images/kotlin_icon.png",
            "images/dart_logo.png",
          ],
          "Experience": ["10 years"],
          "Frameworks": ["Android SDK", "Jetpack Compose", "Flutter"],
          "Worked with": ["EverAccountable", "IdeaHub", "Nixplay"],
        });
    final entries = experienceMap.entries.toList();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < experienceMap.entries.length; i += 2)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First item in the row
                ExperienceCell(
                  experienceTitle: entries[i].key,
                  experienceValue: entries[i].value,
                ),
                // Second item in the row, if exists
                if (i + 1 < entries.length)
                  ExperienceCell(
                    experienceTitle: entries[i + 1].key,
                    experienceValue: entries[i + 1].value,
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
