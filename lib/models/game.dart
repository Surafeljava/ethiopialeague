import 'package:ethioleague/models/team.dart';

class Game {
  final int id;
  final DateTime date;
  final Team home_team;
  final int home_team_score;
  final int period;
  final bool postseason;
  final int season;
  final String status;
  final String time;
  final Team visitor_team;
  final int visitor_team_score;

  Game({
    required this.id,
    required this.date,
    required this.home_team,
    required this.home_team_score,
    required this.period,
    required this.postseason,
    required this.season,
    required this.status,
    required this.time,
    required this.visitor_team,
    required this.visitor_team_score,
  });

  factory Game.fromJson(dynamic json) {
    return Game(
      id: json['id'],
      date: DateTime.now(),
      home_team: Team.fromJson(json['home_team']),
      home_team_score: json['home_team_score'],
      period: json['period'],
      postseason: json['postseason'],
      season: json['season'],
      status: json['status'],
      time: json['time'],
      visitor_team: Team.fromJson(json['visitor_team']),
      visitor_team_score: json['visitor_team_score'],
    );
  }

  Map<String, dynamic> toJson() => {};
}
