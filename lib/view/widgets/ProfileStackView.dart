import 'package:flutter/material.dart';
import 'package:koprofile_flutter/view/widgets/ProfileQuickStatsView.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 800),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProfileQuickStats(),
              SizedBox(height: 16),
              Text(
                "Experienced Mobile Developer with a demonstrated history of working in the information technology and services industry. Skilled in Java and Kotlin used for Android Mobile Development mixed with Flutter for hybrid app development, Integration, Deployment and Maintenance. Strong engineering professional with a Bachelor of Science focused in Information Technology Specialized in Software Engineering from University of the Immaculate Conception.",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w100,
                  wordSpacing: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
