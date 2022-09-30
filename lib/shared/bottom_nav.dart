import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.graduationCap,
              size: 20,
            ),
            label: 'Topics',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.gear,
              size: 20,
            ),
            label: 'Options',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.circleUser,
              size: 20,
            ),
            label: 'Profile',
          ),
        ],
        fixedColor: Colors.deepPurple[200],
        onTap: (int idx) {
          switch (idx) {
            case 0:
              break;
            case 1:
              Navigator.pushNamed(context, '/options');
              break;
            case 2:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        });
  }
}
