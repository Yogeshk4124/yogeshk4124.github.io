// ignore: camel_case_types
class Project {
  String? title, summary, subtitle;
  List<String>? imgsrc;
  List<String>? tech;
  String? viewMore, apk, code;
  Project(
      {required this.title,
      required this.summary,
      required this.subtitle,
      required this.imgsrc,
      required this.tech,
      this.apk,
      this.code,
      this.viewMore});
}
