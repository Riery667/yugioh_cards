import 'package:flutter/material.dart';
import 'package:yugioh_cards/components/card_view.dart';
import 'package:yugioh_cards/models/models.dart';

class CardGridView extends StatefulWidget {
  final List<YugiohCard> cards;

  const CardGridView({super.key, required this.cards});

  @override
  State<CardGridView> createState() => _CardGridViewState();
}

class _CardGridViewState extends State<CardGridView> {
  YugiohCard? selectedCard;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        itemCount: widget.cards.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, childAspectRatio: 3.1 / 4.6),
        itemBuilder: (context, index) {
          final simpleCard = widget.cards[index];
          return GestureDetector(
            onTap: () {
              if (simpleCard == selectedCard) {
                selectedCard = null;
              } else {
                selectedCard = simpleCard;
              }

              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CardView(
                card: simpleCard,
                isSelected: selectedCard == simpleCard,
              ),
            ),
          );
        },
      ),
    );
  }
}
