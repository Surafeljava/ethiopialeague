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

  bool gameSelected = false;

  List<Game> selectedGame = [];

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
    return Stack(
      children: [
        gamesList.length == 0
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
                  return InkWell(
                    child: GameItem(game: gamesList[index]),
                    onTap: () {
                      setState(() {
                        gameSelected = true;
                      });
                    },
                  );
                },
              ),
        gameSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black12,
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1, 2),
                          blurRadius: 6.0,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  gameSelected = false;
                                });
                              },
                              icon: Icon(Icons.close),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
