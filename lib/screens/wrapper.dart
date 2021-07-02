import 'package:ethioleague/screens/games/games_list.dart';
import 'package:ethioleague/screens/teams/team_list.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ethio League'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'GAMES',
              ),
              Tab(
                text: 'TEAMS',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [GameList(), TeamList()],
        ),
      ),
    );
  }
}
