import 'package:flutter/cupertino.dart';
import 'package:yugioh_cards/components/player_rank_tile.dart';
import 'package:yugioh_cards/models/rank_player.dart';

class PlayersRankView extends StatelessWidget {
  final List<Players> playersRank;

  const PlayersRankView({
    super.key,
    required this.playersRank,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        16,
      ),
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final player = playersRank[index];
          return PlayerRankTile(player: player);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: playersRank.length,
      ),
    );
  }
}
