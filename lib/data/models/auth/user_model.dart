import 'package:equatable/equatable.dart';
import 'package:next_starter/common/extensions/object_extension.dart';

class UserModel extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? phoneNumber;
  final String? photo;
  final DateTime? createdAt;

  const UserModel({
    this.id,
    this.name,
    this.email,
    this.phoneNumber,
    this.photo,
    this.createdAt,
  });

  UserModel copyWith({
    int? id,
    String? name,
    String? email,
    String? phoneNumber,
    String? photo,
    DateTime? createdAt,
  }) =>
      UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        photo: photo ?? this.photo,
        createdAt: createdAt ?? this.createdAt,
      );

  factory UserModel.fromJson(Map<String, Object?> json) => UserModel(
        id: json["id"].toIntX(),
        name: json["name"].toStringX(),
        email: json["email"].toStringX(),
        phoneNumber: json["phone_number"].toStringX(),
        photo: json["photo"].toStringX(),
        createdAt: json["created_at"].toDateX(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone_number": phoneNumber,
        "photo": photo,
        "created_at": createdAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [id, name, email, phoneNumber, photo, createdAt];
}
