// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class NavigationSegmentedButtons extends StatefulWidget {
  final ValueChanged<Menu>? onMenuChanged;
  const NavigationSegmentedButtons({super.key, this.onMenuChanged});

  @override
  _NavigationSegmentedButtonsState createState() =>
      _NavigationSegmentedButtonsState();
}

enum Menu { profile, work, contact }

class _NavigationSegmentedButtonsState
    extends State<NavigationSegmentedButtons> {
  Menu selectedMenu = Menu.work;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Menu>(
      style: SegmentedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blueGrey,
        selectedBackgroundColor: Colors.blueGrey,
        selectedForegroundColor: Colors.white,
        iconSize: 32,
      ),
      showSelectedIcon: false,
      segments: const <ButtonSegment<Menu>>[
        ButtonSegment<Menu>(
          value: Menu.profile,
          label: null,
          icon: Icon(Icons.home),
        ),
        ButtonSegment<Menu>(
          value: Menu.work,
          label: null,
          icon: Icon(Icons.workspaces),
        ),
        ButtonSegment<Menu>(
          value: Menu.contact,
          label: null,
          icon: Icon(Icons.handshake),
        ),
      ],
      selected: <Menu>{selectedMenu},
      onSelectionChanged: (Set<Menu> newSelection) {
        setState(() {
          selectedMenu = newSelection.first;
        });
        if (widget.onMenuChanged != null) {
          widget.onMenuChanged!(selectedMenu);
        }
      },
    );
  }
}
