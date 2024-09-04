import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'explore.dart';
import 'favourite.dart';
import 'home.dart';
import 'profile.dart';

class MyBNB extends StatefulWidget {
  final int initialIndex;

  const MyBNB({super.key, this.initialIndex = 0});

  @override
  MyBNBState createState() => MyBNBState();
}

class MyBNBState extends State<MyBNB> {
  late int _currentIndex = widget.initialIndex;
  final List<Widget> _pages = [
    const Home(),
    const Explore(),
    const Favourite(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        switchInCurve: Curves.easeInOut,
        switchOutCurve: Curves.easeInOut,
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.transparent,
        tabMargin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(20),
        curve: Curves.easeInOut,
        iconSize: 24,
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        selectedIndex: _currentIndex,
        onTabChange: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: "Home",
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.primary,
            ),
            gap: 3,
            iconColor: Theme.of(context).colorScheme.primary,
            iconActiveColor: Theme.of(context).colorScheme.primary,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          ),
          GButton(
            icon: Icons.explore_outlined,
            text: "Explore",
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.primary,
            ),
            gap: 3,
            iconColor: Theme.of(context).colorScheme.primary,
            iconActiveColor: Theme.of(context).colorScheme.primary,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          ),
          GButton(
            icon: Icons.favorite_border_rounded,
            text: "Favourite",
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.primary,
            ),
            gap: 3,
            iconColor: Theme.of(context).colorScheme.primary,
            iconActiveColor: Theme.of(context).colorScheme.primary,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          ),
          GButton(
            icon: Icons.person_outline,
            text: "Profile",
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.primary,
            ),
            gap: 3,
            iconColor: Theme.of(context).colorScheme.primary,
            iconActiveColor: Theme.of(context).colorScheme.primary,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          ),
        ],
      ),
    );
  }
}
