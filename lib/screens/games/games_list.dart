import 'package:ethioleague/screens/games/gameItem.dart';
import 'package:flutter/material.dart';

class GameList extends StatelessWidget {
  const GameList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return GameItem();
      },
    );
  }
}
