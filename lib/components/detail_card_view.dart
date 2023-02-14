import 'package:flutter/material.dart';
import 'package:yugioh_cards/models/models.dart';
import 'package:yugioh_cards/yugioh_theme.dart';

class DetailCardView extends StatefulWidget {
  const DetailCardView({
    super.key,
  });

  @override
  State<DetailCardView> createState() => _DetailCardViewState();
}

var testxps = '3';

YugiohCard? selectedCard;

class _DetailCardViewState extends State<DetailCardView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          // child: Container(
          //   color: Colors.amber,
          // ),
          child: Text(
            testxps,
            style: const TextStyle(fontSize: 50),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Container(
                color: Colors.black45,
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Text(
                        'ATK/2600  DEF/2200',
                        style: YugiohTheme.deckTextTheme.displayLarge,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset("assets/attribute_icons/divine.png"),
                    ),
                  ],
                ),
              ),
              //todo: Scroll
              Expanded(
                child: Container(
                  color: Colors.black54,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                        "Requires 3 Tributes to Normal Summon (cannot be Normal Set). This card's Normal Summon cannot be negated. Wshen Normal Summoned, cards and effects cannot be activated. Once per turn, during the End Phase, if this card was Special Summoned: Send it to the GY. Gains 1000 ATK/DEF for each card in your hand. If a monster(s) is Normal or Special Summoned to your opponent's field in Attack Position: That monster(s) loses 2000 ATK, then if its ATK has been reduced to 0 as a result, destroy it.",
                        style: YugiohTheme.deckTextTheme.bodyLarge),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
