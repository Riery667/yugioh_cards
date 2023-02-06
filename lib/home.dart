import 'package:flutter/material.dart';
import 'package:yugioh_cards/screens/libraty_card_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    LibratyCardScreen(),
    Container(color: Colors.green),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Yu-gi-ho',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: 
          const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.crop_landscape), label: 'cards'),
            BottomNavigationBarItem(icon: Icon(Icons.clear_all_outlined), label: 'Ranking')
          ]
      ),
    );
  }
}
