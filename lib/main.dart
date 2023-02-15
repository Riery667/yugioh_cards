import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_cards/home.dart';
import 'package:yugioh_cards/models/card_manager.dart';
import 'package:yugioh_cards/models/models.dart';
import 'package:yugioh_cards/yugioh_theme.dart';

//APP MADE FOR STUDY.

void main() {
  runApp(const Yugioh());
}

class Yugioh extends StatelessWidget {
  const Yugioh({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = YugiohTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Yu-Gi-Oh!',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TabManeger(),
          ),
          ChangeNotifierProvider(
            create: (context) => CardManager(),
          ),
        ],
        child: const Home(),
      ),
    );
  }
}
