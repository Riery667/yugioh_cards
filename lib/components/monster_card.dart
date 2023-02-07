import 'package:flutter/material.dart';
import 'package:yugioh_cards/models/models.dart';
import 'package:yugioh_cards/yugioh_theme.dart';

class MonsterCard extends StatelessWidget {
  final YugiohCard card;
  const MonsterCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(card.backgroundTexture),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(22, 16, 22, 8),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.maxFinite,
                color: Colors.black45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 0, 8),
                      child: Text(card.name,
                          style: YugiohTheme.lightTextTheme.headline1),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(card.attribute))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 20, 4),
                child: Container(
                  height: 25,
                  width: 500,
                  color: Colors.white54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        width: 25,
                        decoration: BoxDecoration(
                            //TODO: ListOfLevel
                            image: DecorationImage(
                                image: AssetImage(card.level),
                                fit: BoxFit.fill)),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 260,
                width: 260,
                color: Colors.black45,
              )
            ],
          ),
        )
      ],
    );
  }
}
