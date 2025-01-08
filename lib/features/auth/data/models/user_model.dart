import 'package:firebase_auth/firebase_auth.dart';
import 'package:habit_note/features/auth/domain/entities/user.dart' as ent;

class UserModel {
  final String email;
  final String name;
  final String? photo;

  const UserModel({
    required this.email,
    required this.name,
    this.photo,
  });

  factory UserModel.fromFirebase(User user) => UserModel(
        email: user.email!,
        name: user.displayName!,
        photo: user.photoURL,
      );

  toUser() => ent.User(email: email, name: name, photo: photo);
}
