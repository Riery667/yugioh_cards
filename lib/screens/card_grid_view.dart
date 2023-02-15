import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_cards/components/mini_card_tile.dart';
import 'package:yugioh_cards/models/card_manager.dart';

class CardGridView extends StatelessWidget {
  const CardGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final cardManager = Provider.of<CardManager>(context, listen: false);
    return GridView.builder(
      itemCount: cardManager.cards.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7, childAspectRatio: 3.1 / 4.6),
      itemBuilder: (context, index) {
        final simpleCard = cardManager.cards[index];
        return GestureDetector(
          onTap: () {
            cardManager.selectCard(simpleCard);
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Consumer<CardManager>(
              builder: (context, cardManager, child) {
                return MiniCardTile(
                  card: simpleCard,
                  isSelected: cardManager.selectedCard == simpleCard,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
