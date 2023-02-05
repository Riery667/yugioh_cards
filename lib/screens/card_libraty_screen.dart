import 'package:flutter/material.dart';

class CardLibratyScreen extends StatelessWidget {
  const CardLibratyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text(
          'Dragon 300 230123, atk DEF', style: Theme.of(context).textTheme.headline1
        ),
      ),
      );
  }
}