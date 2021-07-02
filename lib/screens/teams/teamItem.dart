import 'package:flutter/material.dart';

class TeamItem extends StatelessWidget {
  const TeamItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Game Name'),
      subtitle: Text('Game description'),
      leading: Icon(Icons.games),
    );
  }
}
