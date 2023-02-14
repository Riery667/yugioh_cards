import 'package:flutter/material.dart';

class DeckDistribution extends StatelessWidget {
  DeckDistribution({super.key});

  final List<Color> colors = <Color>[
    Colors.black,
    Colors.white,
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.grey
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) =>
          const Padding(padding: EdgeInsets.all(3)),
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Container(
            //todo: why my width doesnot working here?
            height: 30,
            width: 30,
            color: colors[index],
          ),
        );
      },
    );
  }
}
