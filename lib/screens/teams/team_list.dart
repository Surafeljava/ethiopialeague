import 'package:ethioleague/screens/teams/teamItem.dart';
import 'package:flutter/material.dart';

class TeamList extends StatelessWidget {
  const TeamList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return TeamItem();
      },
    );
  }
}
