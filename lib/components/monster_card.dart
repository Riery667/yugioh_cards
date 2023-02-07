import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:yugioh_cards/app_assets.dart';
import 'package:yugioh_cards/models/models.dart';

class MonsterCard extends StatelessWidget {
  final YugiohCard card;
  const MonsterCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return LayoutBuilder(builder: (context, BoxConstraints bc) {
      final size = bc.biggest;
      return Stack(
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(card.backgroundTexture),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 16, 22, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.10,
                  width: double.maxFinite,
                  color: Colors.black45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 4, 0, 8),
                        child: RichText(
                          text: TextSpan(
                            text: card.name.substring(0, 1),
                            style: textTheme.displayLarge,
                            children: [
                              TextSpan(
                                text: card.name.substring(1),
                                style: textTheme.displayMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(card.attribute),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                  child: SizedBox(
                    height: 25,
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: List.generate(
                        card.level,
                        (index) => Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppAssets.level),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          card.cardImage,
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    width: double.maxFinite,
                    height: 150,
                    color: Colors.white38,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        color: Colors.black54,
                        height: 90,
                        width: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    card.typeOfMonster,
                                    style: textTheme.bodyLarge,
                                  ),
                                  Expanded(
                                    child: AutoSizeText(
                                      card.description,
                                      style: textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'ATK/${card.atk}',
                                        style: textTheme.bodySmall,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'DEF/${card.def}',
                                        style: textTheme.bodySmall,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    });
  }
}
