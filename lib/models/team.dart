class Team {
  final int id;
  final String abbreviation;
  final String city;
  final String conference;
  final String division;
  final String full_name;
  final String name;

  Team({
    required this.id,
    required this.abbreviation,
    required this.city,
    required this.conference,
    required this.division,
    required this.full_name,
    required this.name,
  });

  factory Team.fromJson(dynamic json) {
    return Team(
      id: json['id'],
      abbreviation: json['abbreviation'],
      city: json['city'],
      conference: json['conference'],
      division: json['division'],
      full_name: json['full_name'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'abbreviation': abbreviation,
        'city': city,
        'conference': conference,
        'division': division,
        'full_name': full_name,
        'name': name,
      };
}
