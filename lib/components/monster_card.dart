import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:yugioh_cards/models/models.dart';

class MonsterCard extends StatelessWidget {
  final YugiohCard card;
  const MonsterCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    final cardNames = card.name.split(' ');

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
                  width: size.width,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        style: BorderStyle.solid,
                        width: 4,
                        color: Colors.white38,
                      ),
                      left: BorderSide(
                        style: BorderStyle.solid,
                        width: 4,
                        color: Colors.white54,
                      ),
                      bottom: BorderSide(
                        style: BorderStyle.solid,
                        width: 4,
                        color: Colors.black45,
                      ),
                      right: BorderSide(
                        style: BorderStyle.solid,
                        width: 4,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 4, 0, 8),
                          child: AutoSizeText.rich(
                            TextSpan(
                              text: cardNames[0].substring(0, 1),
                              style: textTheme.displayLarge,
                              children: [
                                TextSpan(
                                  text: "${cardNames[0].substring(1)} ",
                                  style: textTheme.displayMedium,
                                ),
                                if (cardNames.length > 1)
                                  ...List.generate(
                                    cardNames.length - 1,
                                    (index) => TextSpan(
                                      text:
                                          cardNames[index + 1].substring(0, 1),
                                      style: textTheme.displayLarge,
                                      children: [
                                        TextSpan(
                                          text:
                                              "${cardNames[index + 1].substring(1)} ",
                                          style: textTheme.displayMedium,
                                        ),
                                      ],
                                    ),
                                  )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.10,
                        width: size.width * 0.10,
                        child: Positioned.fill(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(card.attribute),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Level of monster
                Column(
                  verticalDirection: VerticalDirection.up,
                  children: [
                    //card image
                    SizedBox(
                      height: size.height * 0.5,
                      width: size.width * 0.78,

                      child: Positioned.fill(
                          child: DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade900,
                              spreadRadius: 8,
                              blurRadius: 12,
                            ),
                          ],
                          border: const Border(
                            top: BorderSide(
                              width: 6,
                              color: Colors.white38,
                            ),
                            left: BorderSide(
                              width: 6,
                              color: Colors.white54,
                            ),
                            bottom: BorderSide(
                              width: 6,
                              color: Colors.black45,
                            ),
                            right: BorderSide(
                              width: 6,
                              color: Colors.black54,
                            ),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              card.cardImage,
                            ),
                          ),
                        ),
                      )),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                      child: SizedBox(
                        height: size.height * 0.04,
                        width: size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            card.level,
                            (index) => Padding(
                              padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
                              child: Container(
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
                        )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    height: size.height * 0.25,
                    width: size.width * 0.85,
                    color: Colors.white38,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
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
                                    style: const TextStyle(fontSize: 12),
                                    minFontSize: 9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (card.cardType == 'monsterCard')
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Divider(
                                  height: 1,
                                  color: Colors.black,
                                ),
                                Column(
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
                                )
                              ],
                            ),
                        ],
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
