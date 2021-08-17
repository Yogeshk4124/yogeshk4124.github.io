// ignore: camel_case_types
class projects {
  String? title, summary, subtitle;
  String? imgsrc;
  List<String>? tech;
  String? viewMore, apk, code;
  projects(
      {required this.title,
      required this.summary,
      required this.subtitle,
      required this.imgsrc,
      required this.tech,
      this.apk,
      this.code,
      this.viewMore});
}
