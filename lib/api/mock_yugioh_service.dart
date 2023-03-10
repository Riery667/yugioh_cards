import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:yugioh_cards/models/models.dart';

class MockYugiohService {
  Future<LibraryCard> getLibraryCard() async {
    final cards = await _getCards();
    return LibraryCard(cards);
  }

  Future<List<YugiohCard>> _getCards() async {
    await Future.delayed(const Duration(milliseconds: 0));
    final dataString =
        await _loadAsset('assets/sample_data/sample_library_cards.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['cards'] != null) {
      final cards = <YugiohCard>[];
      try {
        json['cards'].forEach((v) {
          cards.add(YugiohCard.fromJson(v));
        });
      } catch (e) {
        debugPrint('Error to convertion from Json');
      }
      return cards;
    } else {
      return [];
    }
  }
}

// Loads sample json data from file system
Future<String> _loadAsset(String path) async {
  return rootBundle.loadString(path);
}
