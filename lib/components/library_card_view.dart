import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_cards/components/mini_card_grid_view.dart';
import 'package:yugioh_cards/models/card_manager.dart';
import 'package:yugioh_cards/yugioh_theme.dart';

class LibraryCardView extends StatelessWidget {
  const LibraryCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints bc) {
        final size = bc.biggest;
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(48),
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
                                SizedBox(
                                  child: AutoSizeText(
                                    minFontSize: 2,
                                    'Deck',
                                    style: YugiohTheme.deckTextTheme.bodyLarge,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                Container(
                                  color: Colors.white,
                                  child: Text(
                                    '41',
                                    style:
                                        YugiohTheme.deckTextTheme.displayLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Tab(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  AutoSizeText(
                                    'Fusion',
                                    style: YugiohTheme.deckTextTheme.bodyLarge,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    child: AutoSizeText(
                                      '12',
                                      style: YugiohTheme
                                          .deckTextTheme.displayLarge,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Faker Trasnparent bar!!!
                  const Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
            body: Consumer<CardManager>(
              builder: (context, cardManager, child) {
                if (cardManager.isLoaded) {
                  return child!;
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              child: MiniCardGridView(
                cards: context.read<CardManager>().cards,
              ),
            ),
          ),
        );
      },
    );
  }
}
