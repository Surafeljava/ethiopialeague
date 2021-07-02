import 'package:flutter/material.dart';

class GameItem extends StatelessWidget {
  const GameItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Game Name'),
      subtitle: Text('Game description'),
      leading: Icon(Icons.games),
    );
  }
}
