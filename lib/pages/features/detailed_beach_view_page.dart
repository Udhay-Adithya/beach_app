import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

import 'bottom_nav_bar.dart';
import 'home.dart';

class DetailedBeachView extends StatefulWidget {
  final Map<String, String>? beachInfo;
  const DetailedBeachView({this.beachInfo, super.key});

  @override
  State<DetailedBeachView> createState() => _DetailedBeachViewState();
}

class _DetailedBeachViewState extends State<DetailedBeachView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
            ),
            backgroundColor: Colors.white,
            expandedHeight: 270,
            elevation: 0,
            pinned: true,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(30), // Circular shape
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 10, sigmaY: 10), // Glassmorphism effect
                child: Container(
                  width: 60, // Diameter of the circle
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white
                        .withOpacity(0.2), // Semi-transparent background color
                    borderRadius: BorderRadius.circular(20), // Circular shape
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 24,
                    ),
                    splashRadius: 30, // Set the splash radius
                    color: Colors.white, // Icon color
                    onPressed: () async {
                      Navigator.pushAndRemoveUntil(
                        context,
                        PageTransition(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          type: PageTransitionType.fade,
                          child: const MyBNB(),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "${widget.beachInfo!["image"]}",
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(
                height: 32,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
