import 'package:flutter/material.dart';
import 'package:yugioh_cards/home.dart';
import 'package:yugioh_cards/yuguioh_theme.dart';

void main() {
  runApp(const Yugioh());
}

class Yugioh extends StatelessWidget {
  const Yugioh({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = YugiohTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'Yu-Gi-Oh!',
      home: const Home(),
    );
  }
}
