import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const MyButton(
    this.text, {
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        minimumSize: const WidgetStatePropertyAll(
          Size(325, 60),
        ),
        padding: const WidgetStatePropertyAll(EdgeInsets.all(0)),
        backgroundColor: WidgetStatePropertyAll(
          Theme.of(context).colorScheme.primary,
        ),
        foregroundColor: WidgetStatePropertyAll(
          Theme.of(context).colorScheme.inversePrimary,
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
