import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_cards/components/mini_card_view.dart';
import 'package:yugioh_cards/models/card_manager.dart';

class MiniCardGridView extends StatelessWidget {
  const MiniCardGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CardManager>(
      builder: (context, cardManager, child) {
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
                child: MiniCardView(
                  card: simpleCard,
                  isSelected: cardManager.selectedCard == simpleCard,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
