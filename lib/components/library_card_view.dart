import 'package:flutter/material.dart';
import 'package:yugioh_cards/api/mock_yugioh_service.dart';
import 'package:yugioh_cards/models/library_card.dart';

import 'card_grid_view.dart';

class LibraryCardView extends StatelessWidget {
  final mockService = MockYugiohService();

  LibraryCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockService.getLibraryCard(),
        builder: (context, AsyncSnapshot<LibraryCard> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CardGridView(cards: snapshot.data?.cards ?? []);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
