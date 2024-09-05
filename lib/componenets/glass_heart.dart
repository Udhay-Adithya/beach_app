import 'dart:ui';

import 'package:flutter/material.dart';

class GlassHeart extends StatelessWidget {
  const GlassHeart({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30), // Circular shape
      child: BackdropFilter(
        filter:
            ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Glassmorphism effect
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
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(
              Icons.favorite_outline_rounded,
              size: 22,
            ),
            splashRadius: 30, // Set the splash radius
            color: Colors.white, // Icon color
            onPressed: () {
              // Your onPressed functionality
            },
          ),
        ),
      ),
    );
  }
}
