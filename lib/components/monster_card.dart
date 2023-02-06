import 'package:flutter/material.dart';
import 'package:yugioh_cards/models/models.dart';

class MonsterCard extends StatelessWidget {
  final YugiohCard card;
  const MonsterCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      color: Colors.black54,
      child: Stack(
        children: [
          Image.asset(card.backgroundTexture),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
            child: Column(
              children: [
                Container(
                  height: 80,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
