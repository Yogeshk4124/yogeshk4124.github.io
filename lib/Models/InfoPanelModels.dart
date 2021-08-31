class Experience {
  String position;
  String companyName;
  String duration;
  String location;
  List<String> content;
  Experience(
      {required this.position,
      required this.companyName,
      required this.duration,
      required this.location,
      required this.content});
}

class Education {
  String level;
  String board;
  String institute;
  String duration;
  String location;
  Education({
    required this.level,
    required this.board,
    required this.institute,
    required this.duration,
    required this.location,
  });
}

class FunFact {
  String heading;
  String description;
  String img;
  FunFact({
    required this.heading,
    required this.description,
    required this.img,
  });
}
