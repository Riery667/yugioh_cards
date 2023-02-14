import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_cards/models/models.dart';
import 'package:yugioh_cards/screens/deck_screen.dart';
import 'package:yugioh_cards/screens/rank_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = <Widget>[
    const DeckScreen(),
    RankScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManeger>(builder: (context, tabManeger, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Yu-gi-ho',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        body: IndexedStack(
          index: tabManeger.selectedTab,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: tabManeger.selectedTab,
          onTap: (index) {
            tabManeger.goToTab(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.cases_rounded),
              label: 'Deck',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_sharp),
              label: 'Rank',
            ),
          ],
        ),
      );
    });
  }
}
