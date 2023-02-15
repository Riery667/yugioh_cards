import 'package:flutter/material.dart';
import 'package:yugioh_cards/api/mock_yugioh_service.dart';
import 'package:yugioh_cards/models/models.dart';

class CardManager extends ChangeNotifier {
  final List<YugiohCard> cards = [];
  late YugiohCard selectedCard;
  bool isLoaded = false;
  final mockService = MockYugiohService();

  CardManager() {
    _init();
  }

  void _init() async {
    final list = await mockService.getCards();
    selectedCard = list.first;
    cards.addAll(list);
    isLoaded = true;
    notifyListeners();
  }

  void selectCard(YugiohCard card) {
    selectedCard = card;
    notifyListeners();
  }
}
