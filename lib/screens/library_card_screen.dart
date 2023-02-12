import 'package:flutter/material.dart';
import 'package:yugioh_cards/api/mock_yugioh_service.dart';
import 'package:yugioh_cards/models/library_card.dart';

import '../components/card_grid_view.dart';

class LibraryCardScreen extends StatelessWidget {
  final mockService = MockYugiohService();

  LibraryCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockService.getLibraryCard(),
        builder: (context, AsyncSnapshot<LibraryCard> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CardGridView(cards: snapshot.data?.cards ?? []);
            // return Container(
            //   color: Colors.green,
            // );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
