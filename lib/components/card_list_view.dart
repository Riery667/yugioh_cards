import 'package:flutter/material.dart';
import 'package:yugioh_cards/components/monster_card.dart';
import 'package:yugioh_cards/components/spell_card.dart';
import 'package:yugioh_cards/components/trap_card.dart';
import 'package:yugioh_cards/models/models.dart';

class CardListView extends StatelessWidget {
  final List<YugiohCard> cards;

  const CardListView({super.key, required this.cards});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        itemCount: cards.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final simpleCard = cards[index];
          return buildCard(simpleCard);
        },
      ),
    );
  }

  Widget buildCard(YugiohCard modelCard) {
    if (modelCard.cardType == WidgetCardType.monsterCard) {
      return MonsterCard(card: modelCard);
    } else if (modelCard.cardType == WidgetCardType.spellCard) {
      return SpellCard(card: modelCard);
    } else if (modelCard.cardType == WidgetCardType.trapCard) {
      return TrapCard(card: modelCard);
    } else {
      throw Exception('This card doesn\'t existe yet');
    }
  }
}
