class PortfolioPath {
  final String name;
  List<String> path;
  final String description;
  List<String> tags;
  final String linkGithub;
  final String linkApk;
  String? linkOther;

  PortfolioPath({
    this.linkOther,
    required this.linkGithub,
    required this.linkApk,
    required this.name,
    required this.path,
    required this.description,
    required this.tags,
  });
}
