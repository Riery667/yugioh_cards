import 'package:flutter/material.dart';
import 'package:yugioh_cards/yuguioh_theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white30,
        child: Center(child: Text('300, DRAGON, dragon, ATK, DEF',
        style: YugiohTheme.lightTextTheme.bodyText1,
        )),
      ),
    );
  }
}
