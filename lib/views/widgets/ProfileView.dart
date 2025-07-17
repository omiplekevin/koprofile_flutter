import 'package:flutter/material.dart';
import 'package:koprofile_flutter/views/widgets/ProfileQuickStats.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [ProfileQuickStats(), SizedBox(height: 16)]),
      ),
    );
  }
}
