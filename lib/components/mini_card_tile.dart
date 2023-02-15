import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:yugioh_cards/models/models.dart';
import 'package:yugioh_cards/yugioh_theme.dart';

class MiniCardTile extends StatelessWidget {
  final YugiohCard card;
  final bool isSelected;
  const MiniCardTile({
    super.key,
    required this.card,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints bc) {
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
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: size.height * 0.10,
                width: size.width,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      style: BorderStyle.solid,
                      width: 1,
                      color: Colors.white38,
                    ),
                    left: BorderSide(
                      style: BorderStyle.solid,
                      width: 1,
                      color: Colors.white54,
                    ),
                    bottom: BorderSide(
                      style: BorderStyle.solid,
                      width: 1,
                      color: Colors.black45,
                    ),
                    right: BorderSide(
                      style: BorderStyle.solid,
                      width: 1,
                      color: Colors.black54,
                    ),
                  ),
                ),
                child: Center(
                  child: AutoSizeText(
                    minFontSize: 1,
                    maxLines: 1,
                    card.name,
                    style: YugiohTheme.cardTextTheme.bodySmall,
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: size.height * 0.6,
                width: size.width * 0.9,
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
                        width: 1,
                        color: Colors.white38,
                      ),
                      left: BorderSide(
                        width: 1,
                        color: Colors.white54,
                      ),
                      bottom: BorderSide(
                        width: 1,
                        color: Colors.black45,
                      ),
                      right: BorderSide(
                        width: 1,
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
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  height: size.height * 0.20,
                  width: size.width,
                  color: Colors.white54,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (card.backgroundTexture !=
                          'assets/card_texture/normal_texture.png')
                        Expanded(
                          child: AutoSizeText(
                            card.description,
                            style: YugiohTheme.deckTextTheme.displaySmall,
                            minFontSize: 3,
                          ),
                        ),
                      if (card.backgroundTexture ==
                          'assets/card_texture/normal_texture.png')
                        Expanded(
                          child: AutoSizeText(
                            card.description,
                            style: YugiohTheme.deckTextTheme.displaySmall,
                            minFontSize: 3,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
