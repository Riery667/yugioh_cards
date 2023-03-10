import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:yugioh_cards/api/mock_yugioh_service.dart';
import 'package:yugioh_cards/components/mini_card_grid_view.dart';
import 'package:yugioh_cards/models/library_card.dart';
import 'package:yugioh_cards/yugioh_theme.dart';

class LibraryCardView extends StatelessWidget {
  final mockService = MockYugiohService();

  LibraryCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints bc) {
        final size = bc.biggest;
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(size.height * 0.1),
              child: Row(
                children: [
                  Expanded(
                    child: AppBar(
                      backgroundColor: Colors.pink,
                      bottom: TabBar(
                        tabs: [
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Deck',
                                  style:
                                      YugiohTheme.deckTextTheme.displayMedium,
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.white,
                                    child: Text(
                                      '41',
                                      style:
                                          YugiohTheme.deckTextTheme.bodyLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AutoSizeText(
                                  'Fusion',
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
                                      '12',
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
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            body: FutureBuilder(
              future: mockService.getLibraryCard(),
              builder: (context, AsyncSnapshot<LibraryCard> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return MiniCardGridView(cards: snapshot.data?.cards ?? []);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        );
      },
    );
  }
}
