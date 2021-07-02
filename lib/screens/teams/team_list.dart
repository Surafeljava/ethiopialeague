import 'package:ethioleague/models/team.dart';
import 'package:ethioleague/screens/teams/teamItem.dart';
import 'package:ethioleague/services/api_service.dart';
import 'package:flutter/material.dart';

class TeamList extends StatefulWidget {
  const TeamList({Key? key}) : super(key: key);

  @override
  _TeamListState createState() => _TeamListState();
}

class _TeamListState extends State<TeamList> {
  ApiServices services = new ApiServices();

  List<Team> teamsList = [];

  @override
  void initState() {
    super.initState();
    services.getTeamsData().then((value) {
      for (Team team in value) {
        setState(() {
          teamsList.add(team);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return teamsList.length == 0
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
            itemCount: teamsList.length,
            itemBuilder: (context, index) {
              return TeamItem(team: teamsList[index]);
            },
          );
  }
}
