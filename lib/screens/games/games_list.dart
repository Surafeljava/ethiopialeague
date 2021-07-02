import 'package:ethioleague/models/game.dart';
import 'package:ethioleague/screens/games/gameItem.dart';
import 'package:ethioleague/services/api_service.dart';
import 'package:flutter/material.dart';

class GameList extends StatefulWidget {
  const GameList({Key? key}) : super(key: key);

  @override
  _GameListState createState() => _GameListState();
}

class _GameListState extends State<GameList> {
  ApiServices services = new ApiServices();

  List<Game> gamesList = [];

  @override
  void initState() {
    super.initState();
    services.getGamesData().then((value) {
      for (Game game in value) {
        setState(() {
          gamesList.add(game);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return gamesList.length == 0
        ? Container(
            child: Center(
              child: Container(
                width: 50,
                height: 50,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          )
        : ListView.builder(
            itemCount: gamesList.length,
            itemBuilder: (context, index) {
              return GameItem(game: gamesList[index]);
            },
          );
  }
}
