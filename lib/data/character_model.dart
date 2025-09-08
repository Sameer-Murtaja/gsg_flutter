class CharacterModel {
  final String fullname;
  final String nickname;
  final String hogwartsHouse;
  final String interpretedBy;
  final List<String> children;
  final String image;
  final String birthDate;
  final int index;

  CharacterModel({
    required this.fullname,
    required this.nickname,
    required this.hogwartsHouse,
    required this.interpretedBy,
    required this.children,
    required this.image,
    required this.birthDate,
    required this.index,
  });

  factory CharacterModel.fromJson(Map json) {
    return CharacterModel(
      fullname: json['fullname'] ?? '',
      nickname: json['nickname'] ?? '',
      hogwartsHouse: json['hogwartsHouse'] ?? '',
      interpretedBy: json['interpretedBy'] ?? '',
      children: List<String>.from(json['children'] ?? []),
      image: json['image'] ?? '',
      birthDate: json['birthDate'] ?? '',
      index: json['index'] ?? 0,
    );
  }

}

/*
[
  {
    "fullname": "Harry James Potter",
    "nickname": "Harry",
    "hogwartsHouse": "Gryffindor",
    "interpretedBy": "Daniel Radcliffe",
    "children": [
      "James Sirius Potter"
    ],
    "image": "https://raw.githubusercontent.com/fedeperin/potterapi/main/public/images/characters/harry_potter.png",
    "birthDate": "Jul 31, 1980",
    "index": 0
  }
]
*/