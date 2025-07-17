import 'package:flutter/material.dart';
import 'package:koprofile_flutter/views/widgets/NavigationSegmentedButtons.dart';
import 'package:koprofile_flutter/views/widgets/ProfileView.dart';

class HomePage extends StatefulWidget {
  final String? title;
  const HomePage({super.key, this.title});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Menu currentSelectedMenu = Menu.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text(""))),
      body: Center(
        child: Builder(
          builder: (context) {
            switch (currentSelectedMenu) {
              case Menu.home:
                return ProfileView();
              case Menu.work:
                return Text('Work history');
              case Menu.contact:
                return Text('Contact View');
            }
          },
        ),
      ),
      bottomNavigationBar: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 512),
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: NavigationSegmentedButtons(
            onMenuChanged: (value) {
              setState(() {
                currentSelectedMenu = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
