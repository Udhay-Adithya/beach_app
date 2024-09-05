import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/user_provider.dart';

class GlassHeart extends ConsumerWidget {
  final Map<String, String> beachInfo;
  const GlassHeart(this.beachInfo, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                offset: const Offset(0, 4),
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
            onPressed: () async {
              // Access the user provider to update favoritedBeaches
              final userNotifier = ref.read(userProvider.notifier);
              userNotifier.updateFavoritedBeaches(beachInfo);
            },
          ),
        ),
      ),
    );
  }
}
