import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:yugioh_cards/models/rank_player.dart';
import 'package:yugioh_cards/models/rank.dart';

class MockRankService {
  Future<Rank> rank() async {
    final player = await _getPlayers();

    return Rank(player);
  }

  Future<List<Players>> _getPlayers() async {
    await Future.delayed(const Duration(milliseconds: 0));
    final dataString =
        await _loadAsset('assets/sample_data/sample_players_rank.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['players'] != null) {
      final players = <Players>[];
      try {
        json['players'].forEach((v) {
          players.add(Players.fromJson(v));
        });
      } catch (e) {
        debugPrint('Error to convertions from Json');
      }
      return players;
    } else {
      return [];
    }
  }
}

// Loads sample json data from file system
Future<String> _loadAsset(String path) async {
  return rootBundle.loadString(path);
}
