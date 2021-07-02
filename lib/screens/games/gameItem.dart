import 'package:ethioleague/models/game.dart';
import 'package:flutter/material.dart';

class GameItem extends StatelessWidget {
  final Game game;

  const GameItem({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(game.home_team.name),
      subtitle: Text(game.status),
      leading: Icon(Icons.games),
    );
  }
}
