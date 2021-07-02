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
      subtitle: Text(
        'City: ${team.city}',
        style: TextStyle(
          color: Colors.grey[600],
          fontWeight: FontWeight.w400,
          fontSize: 13.0,
        ),
      ),
    );
  }
}
