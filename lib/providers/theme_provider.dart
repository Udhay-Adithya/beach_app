import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../componenets/theme/theme.dart';

final themeProvider = StateProvider<ThemeData>(
  (ref) => darkTheme,
);
