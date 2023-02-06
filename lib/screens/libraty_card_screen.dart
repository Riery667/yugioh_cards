import 'package:flutter/material.dart';
import 'package:yugioh_cards/api/mock_yugioh_service.dart';
import 'package:yugioh_cards/components/monster_card.dart';
import 'package:yugioh_cards/models/library_card.dart';

class LibratyCardScreen extends StatelessWidget {
  final mockService = MockYugiohService();

  LibratyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockService.getLibraryCard(),
        builder: (context, AsyncSnapshot<LibratyCard> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const MonsterCard();
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
