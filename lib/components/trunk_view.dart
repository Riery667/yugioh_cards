import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:yugioh_cards/yugioh_theme.dart';

class TrunkView extends StatelessWidget {
  const TrunkView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints bc) {
        final size = bc.biggest;
        return DefaultTabController(
          length: 1,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(size.height * 0.1),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: AppBar(
                      backgroundColor: Colors.blue,
                      bottom: TabBar(
                        tabs: [
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Trunk',
                                  style:
                                      YugiohTheme.deckTextTheme.displayMedium,
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.white,
                                    child: AutoSizeText(
                                      minFontSize: 1,
                                      '1402',
                                      style:
                                          YugiohTheme.deckTextTheme.bodyLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Faker Trasnparent bar!!!
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            body: Container(color: Colors.amber),
            // body: FutureBuilder(
            //   future: mockService.getLibraryCard(),
            //   builder: (context, AsyncSnapshot<LibraryCard> snapshot) {
            //     if (snapshot.connectionState == ConnectionState.done) {
            //       return CardGridView(cards: snapshot.data?.cards ?? []);
            //     } else {
            //       return const Center(child: CircularProgressIndicator());
            //     }
            //   },
            // ),
          ),
        );
      },
    );
  }
}
