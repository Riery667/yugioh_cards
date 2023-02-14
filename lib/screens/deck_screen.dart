import 'package:flutter/material.dart';
import 'package:yugioh_cards/components/library_card_view.dart';
import 'package:yugioh_cards/components/detail_card_view.dart';
import 'package:yugioh_cards/components/trunk_view.dart';

class DeckScreen extends StatelessWidget {
  const DeckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/card_texture/background_1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Row(
            children: [
              //Selected Card with description
              const Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: DetailCardView(),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LibraryCardView(),
                ),
              ),
              const Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TrunkView(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
