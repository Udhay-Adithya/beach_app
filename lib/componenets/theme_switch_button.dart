import 'package:beach_app/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme/theme.dart';

class ThemeSwitchButton extends ConsumerStatefulWidget {
  const ThemeSwitchButton({super.key});

  @override
  ConsumerState<ThemeSwitchButton> createState() => _ThemeSwitchButtonState();
}

class _ThemeSwitchButtonState extends ConsumerState<ThemeSwitchButton> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    return IconButton(
      onPressed: () async {
        setState(() {
          if (theme == darkTheme) {
            ref.read(themeProvider.notifier).state = lightTheme;
          } else {
            ref.read(themeProvider.notifier).state = darkTheme;
          }
        });
      },
      icon: theme == darkTheme
          ? const Icon(
              Icons.dark_mode_rounded,
              color: Colors.amberAccent,
            )
          : const Icon(
              Icons.light_mode_rounded,
              color: Colors.deepPurple,
            ),
    );
  }
}
