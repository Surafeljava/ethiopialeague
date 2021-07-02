import 'package:ethioleague/models/team.dart';

class Game {
  final String id;
  final DateTime date;
  final Team home_team;
  final int home_team_scode;
  final int period;
  final bool postseason;
  final int season;
  final String status;
  final String time;
  final Team visitor_team;
  final int visitor_team_score;

  Game(
    this.id,
    this.date,
    this.home_team,
    this.home_team_scode,
    this.period,
    this.postseason,
    this.season,
    this.status,
    this.time,
    this.visitor_team,
    this.visitor_team_score,
  );
}
