class OnboardingItemModel {
  final String id;
  final String title;
  final String subtitle;
  final String assetPath;

  const OnboardingItemModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.assetPath,
  });

  factory OnboardingItemModel.fromJson(Map<String, dynamic> json) =>
      OnboardingItemModel(
        id: json['id'],
        title: json['title'],
        subtitle: json['subtitle'],
        assetPath: json['asset_path'],
      );
}
