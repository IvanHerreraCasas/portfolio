class Project {
  final String title;
  final String assetName;
  final String description;
  final String? sourceCodePath;

  const Project({
    required this.title,
    required this.assetName,
    required this.description,
    this.sourceCodePath,
  });
}
