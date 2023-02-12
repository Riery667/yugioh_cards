import 'package:flutter/material.dart';
import 'package:yugioh_cards/components/circle_image.dart';
import 'package:yugioh_cards/models/rank_player.dart';

class PlayerRankTile extends StatelessWidget {
  final Players player;
  const PlayerRankTile({super.key, required this.player});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImage(
          imageProvider: AssetImage(player.playerImage),
          imageRadius: 40,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(player.playerName),
              Text(
                player.playerPoints.toString(),
              ),
            ],
          ),
        ),
        Text(
          "${player.currentRank} º",
        ),
        const SizedBox(
          width: 30,
        )
      ],
    );
  }
}
