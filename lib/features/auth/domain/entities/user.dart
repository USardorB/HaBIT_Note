class User {
  final String email;
  final String name;
  final String? photo;

  const User({
    required this.email,
    required this.name,
    this.photo,
  });
}
