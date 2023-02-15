import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_cards/components/components.dart';
import 'package:yugioh_cards/models/card_manager.dart';

class DetailCardView extends StatefulWidget {
  const DetailCardView({
    super.key,
  });

  @override
  State<DetailCardView> createState() => _DetailCardViewState();
}

class _DetailCardViewState extends State<DetailCardView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CardManager>(
      builder: (context, value, child) {
        if (value.isLoaded) {
          return CardView(
            card: value.selectedCard,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
