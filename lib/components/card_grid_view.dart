import 'package:flutter/material.dart';
import 'package:yugioh_cards/components/monster_card.dart';
import 'package:yugioh_cards/models/models.dart';

class CardGridView extends StatelessWidget {
  final List<YugiohCard> cards;

  const CardGridView({super.key, required this.cards});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        itemCount: cards.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 3.1 / 4.6),
        itemBuilder: (context, index) {
          final simpleCard = cards[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: MonsterCard(card: simpleCard),
          );
        },
      ),
    );
  }

  
}
