import 'dart:convert';

import 'package:ethioleague/models/game.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  String baseUrl = "http://www.mocky.io/v2/5de8d38a3100000f006b1479";

  Future<List<dynamic>> getGamesData() async {
    //get the game data here
    List<dynamic> games = [];

    dynamic result = await http.get(Uri.parse(baseUrl));

    List<dynamic> gamesList = jsonDecode(result.body)["data"];

    for (dynamic item in gamesList) {
      print(item);
      games.add(Game.fromJson(item));
    }

    return games;
  }

  Future<List<dynamic>> getTeamsData() async {
    List<dynamic> teams = [];

    var result = await http.get(Uri.parse(baseUrl));

    List<dynamic> gamesList = jsonDecode(result.body)["data"];

    for (dynamic item in gamesList) {
      print(item);
      teams.add(
        Game.fromJson(item).home_team,
      );
      teams.add(
        Game.fromJson(item).visitor_team,
      );
    }

    return teams;
  }
}
