import 'package:flutter/material.dart';
import 'package:yugioh_cards/yugioh_theme.dart';

class SelectedCardView extends StatelessWidget {
  const SelectedCardView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
    final List<int> colorCodes = <int>[
      700,
      600,
      500,
      400,
      300,
      200,
    ];
    final List<Color> colors = <Color>[
      Colors.black,
      Colors.white,
      Colors.blue,
      Colors.red,
      Colors.yellow,
      Colors.grey
    ];
    return LayoutBuilder(builder: (context, BoxConstraints bc) {
      final size = bc.biggest;
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.blue.shade100,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'assets/card_texture/slifer_texture.png'),
                          ),
                        ),
                      ),
                    ),
                    //Type of cards used in your deck
                    SizedBox(
                      width: 40,
                      child: ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (BuildContext context, int index) =>
                            const Padding(padding: EdgeInsets.all(2)),
                        itemCount: entries.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            //todo: why my width doesnot working here?
                            height: 35,
                            color: colors[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Container(
                            color: Colors.green,
                            child: Text(
                              'ATK/2600 DEF 2200',
                              style: YugiohTheme.cardTextTheme.displayLarge,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            height: 30,
                            child: Image.asset(
                                "assets/attribute_icons/divine.png"),
                          ),
                        ),
                      ],
                    ),
                    //todo: Scroll
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                            "Requires 3 Tributes to Normal Summon (cannot be Normal Set). This card's Normal Summon cannot be negated. Wshen Normal Summoned, cards and effects cannot be activated. Once per turn, during the End Phase, if this card was Special Summoned: Send it to the GY. Gains 1000 ATK/DEF for each card in your hand. If a monster(s) is Normal or Special Summoned to your opponent's field in Attack Position: That monster(s) loses 2000 ATK, then if its ATK has been reduced to 0 as a result, destroy it."),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
