import 'package:flutter/material.dart';
import 'package:yugioh_cards/components/library_card_view.dart';
import 'package:yugioh_cards/components/selected_card_view.dart';
import 'package:yugioh_cards/components/trunk_view.dart';

class DeckScreen extends StatelessWidget {
  const DeckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints bc) {
      final size = bc.biggest;

      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.green,
          child: Row(
            children: [
              //Selected Card with description
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      color: Colors.amber, child: const SelectedCardView()),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red.shade300,
                    child: LibraryCardView(),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.purple.shade300,
                    child: const TrunkView(),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
