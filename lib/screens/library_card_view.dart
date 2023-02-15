import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_cards/screens/card_grid_view.dart';
import 'package:yugioh_cards/models/card_manager.dart';

class LibraryCardView extends StatelessWidget {
  const LibraryCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CardManager>(
      builder: (context, cardManager, child) {
        if (cardManager.isLoaded) {
          return child!;
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      child: const CardGridView(),
    );
  }
}
