import 'package:flutter/material.dart';
import 'package:yugioh_cards/api/mock_rank_service.dart';
import 'package:yugioh_cards/components/players_rank_view.dart';
import 'package:yugioh_cards/models/rank.dart';

class RankScreen extends StatelessWidget {
  final mockSerivce = MockRankService();
  RankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockSerivce.rank(),
      builder: (context, AsyncSnapshot<Rank> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return PlayersRankView(playersRank: snapshot.data?.rankPlayer ?? []);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
