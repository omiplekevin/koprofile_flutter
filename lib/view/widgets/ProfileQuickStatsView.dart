import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:koprofile_flutter/view/widgets/ProfileExperienceSummaryView.dart';

class ProfileQuickStats extends StatelessWidget {
  const ProfileQuickStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            //Quick intro
            Text(
              "Crafting Mobile Experiences\nwith Android and Flutter",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            //Profile Headshot
            Padding(
              padding: const EdgeInsets.only(top: 32.0, bottom: 32.0),
              child: Image.asset(
                'images/head_shot_kjo.png',
                width: kIsWeb
                    ? 500
                    : (Platform.isAndroid || Platform.isIOS)
                    ? double.infinity
                    : 500,
              ),
            ),
            //Name
            Align(
              alignment: kIsWeb ? Alignment.center : Alignment.centerLeft,
              child: Text(
                textAlign: TextAlign.center,
                "Kevin Jimenez Omiple".toUpperCase(),
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            ProfileExperienceSummary(),
          ],
        ),
      ),
    );
  }
}
