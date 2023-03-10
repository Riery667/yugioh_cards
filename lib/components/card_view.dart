import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:yugioh_cards/app_assets.dart';
import 'package:yugioh_cards/models/models.dart';
import 'package:yugioh_cards/yugioh_theme.dart';

class CardView extends StatelessWidget {
  final YugiohCard card;
  final bool isSelected;
  const CardView({super.key, required this.card, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final cardNames = card.name.split(' ');
    return LayoutBuilder(builder: (context, BoxConstraints bc) {
      final size = bc.biggest;
      return Stack(
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(card.backgroundTexture),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isSelected ? Colors.black45 : null,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(size.height * 0.010),
            child: Column(
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
                          padding: const EdgeInsets.fromLTRB(8, 4, 0, 2),
                          child: AutoSizeText.rich(
                            minFontSize: 5,
                            TextSpan(
                              text: cardNames[0].substring(0, 1),
                              style: YugiohTheme.cardTextTheme.displayLarge,
                              children: [
                                TextSpan(
                                  text: "${cardNames[0].substring(1)} ",
                                  style:
                                      YugiohTheme.cardTextTheme.displayMedium,
                                ),
                                if (cardNames.length > 1)
                                  ...List.generate(
                                    cardNames.length - 1,
                                    (index) => TextSpan(
                                      text:
                                          cardNames[index + 1].substring(0, 1),
                                      style: YugiohTheme
                                          .cardTextTheme.displayLarge,
                                      children: [
                                        TextSpan(
                                          text:
                                              "${cardNames[index + 1].substring(1)} ",
                                          style: YugiohTheme
                                              .cardTextTheme.displayMedium,
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
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(card.attribute),
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
                      height: size.height * 0.50,
                      width: size.width * 0.83,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade900,
                              spreadRadius: 5,
                              blurRadius: 20,
                            ),
                          ],
                          border: const Border(
                            top: BorderSide(
                              width: 3,
                              color: Colors.white38,
                            ),
                            left: BorderSide(
                              width: 3,
                              color: Colors.white54,
                            ),
                            bottom: BorderSide(
                              width: 3,
                              color: Colors.black45,
                            ),
                            right: BorderSide(
                              width: 3,
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4, 4, 6),
                      child: SizedBox(
                        height: size.height * 0.04,
                        width: size.width * 0.85,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            card.level,
                            (index) => Padding(
                              padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
                              child: Container(
                                height: size.height * 0.055,
                                width: size.width * 0.055,
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
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.01),
                    child: Container(
                      width: size.width,
                      color: Colors.white38,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                //CARD TYPE
                                SizedBox(
                                  width: size.width * 0.9,
                                  height: size.height * 0.04,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AutoSizeText(
                                        card.typeOfMonster,
                                        style:
                                            YugiohTheme.cardTextTheme.bodyLarge,
                                        minFontSize: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //DESCRIPTION
                          if (card.backgroundTexture !=
                              'assets/card_texture/normal_texture.png')
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                card.description,
                                style: YugiohTheme.cardTextTheme.bodyMedium,
                                minFontSize: 5,
                              ),
                            ),
                          if (card.backgroundTexture ==
                              'assets/card_texture/normal_texture.png')
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                card.description,
                                style: YugiohTheme.cardTextTheme.displaySmall,
                                minFontSize: 5,
                              ),
                            ),
                                    
                          if (card.cardType == 'monsterCard')
                            SizedBox(
                              child: Column(
                                children: [
                                  const Divider(
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.04,
                                    width: size.width * 0.9,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        AutoSizeText(
                                          'ATK/    ${card.atk}',
                                          minFontSize: 2,
                                          style: YugiohTheme
                                              .cardTextTheme.bodySmall,
                                        ),
                                        SizedBox(
                                          width: size.width * 0.05,
                                        ),
                                        AutoSizeText(
                                          'DEF/    ${card.def}',
                                          minFontSize: 2,
                                          style: YugiohTheme
                                              .cardTextTheme.bodySmall,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
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
