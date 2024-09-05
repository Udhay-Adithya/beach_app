import 'package:flutter/material.dart';

class OutwardArrow extends StatelessWidget {
  const OutwardArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_outward_rounded,
            size: 28,
          ),
          splashRadius: 30,
          color: Colors.black,
          onPressed: () {
            // Your onPressed functionality
          },
        ),
      ),
    );
  }
}
