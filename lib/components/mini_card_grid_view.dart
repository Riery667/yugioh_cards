import 'package:flutter/material.dart';
import 'package:yugioh_cards/components/card_view.dart';
import 'package:yugioh_cards/components/mini_card_view.dart';
import 'package:yugioh_cards/models/models.dart';

class MiniCardGridView extends StatefulWidget {
  final List<YugiohCard> cards;

  const MiniCardGridView({super.key, required this.cards});

  @override
  State<MiniCardGridView> createState() => _MiniCardGridViewState();
}

class _MiniCardGridViewState extends State<MiniCardGridView> {
  YugiohCard? selectedCard;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.cards.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7, childAspectRatio: 3.1 / 4.6),
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
            padding: const EdgeInsets.all(4.0),
            child: MiniCardView(
              card: simpleCard,
              isSelected: selectedCard == simpleCard,
            ),
          ),
        );
      },
    );
  }
}
