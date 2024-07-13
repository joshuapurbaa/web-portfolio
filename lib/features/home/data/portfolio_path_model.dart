class PortfolioPath {
  PortfolioPath({
    required this.linkGithub,
    required this.linkApk,
    required this.name,
    required this.path,
    required this.features,
    required this.description,
    required this.tags,
    this.linkOther,
  });
  
  final String name;
  List<String> path;
  final String features;
  final String description;
  List<String> tags;
  final String linkGithub;
  final String linkApk;
  String? linkOther;
}
