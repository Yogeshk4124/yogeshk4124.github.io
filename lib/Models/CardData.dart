class CardData {
  String subheading;
  String heading;
  String duration;
  List<String>? content;
  CardData(
      {required this.subheading,
      required this.heading,
      required this.duration,
      this.content});
}
