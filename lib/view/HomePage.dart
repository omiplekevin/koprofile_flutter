import 'package:flutter/material.dart';
import 'package:koprofile_flutter/view/WorkPage.dart';
import 'package:koprofile_flutter/view/widgets/NavSegmentedButtonsView.dart';
import 'package:koprofile_flutter/view/widgets/ProfileStackView.dart';

class HomePage extends StatefulWidget {
  final String? title;
  const HomePage({super.key, this.title});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Menu currentSelectedMenu = Menu.work;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text(""))),
      body: Center(
        child: Builder(
          builder: (context) {
            switch (currentSelectedMenu) {
              case Menu.profile:
                return ProfileView();
              case Menu.work:
                return WorkPage();
              case Menu.contact:
                return Text('Contact View');
            }
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.all(16.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 800),
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
