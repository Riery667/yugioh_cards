import 'package:flutter/material.dart';
import 'package:yugioh_cards/components/monster_card.dart';

class LibratyCardScreen extends StatelessWidget {
  const LibratyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Center(
        child: MonsterCard()
      ),
      );
  }
}