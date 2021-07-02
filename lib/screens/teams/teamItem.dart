import 'package:ethioleague/models/team.dart';
import 'package:flutter/material.dart';

class TeamItem extends StatelessWidget {
  final Team team;
  const TeamItem({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "${team.full_name}(${team.abbreviation})",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 17.0,
        ),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("City: ${team.city}"),
              Text("Division: ${team.division}"),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name: ${team.name}"),
              Text("Conference: ${team.conference}"),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
