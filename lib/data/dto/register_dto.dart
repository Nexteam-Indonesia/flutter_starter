import 'package:equatable/equatable.dart';

class RegisterDto extends Equatable {
  final String? name;
  final String? email;
  final String? password;
  final String? phoneNumber;

  const RegisterDto({
    this.name,
    this.email,
    this.password,
    this.phoneNumber,
  });

  factory RegisterDto.fromJson(Map<String, dynamic> json) => RegisterDto(
        name: json['name'] as String?,
        email: json['email'] as String?,
        password: json['password'] as String?,
        phoneNumber: json['phone_number'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': password,
        'phone_number': phoneNumber,
      };

  RegisterDto copyWith({
    String? name,
    String? email,
    String? password,
    String? phoneNumber,
  }) {
    return RegisterDto(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  List<Object?> get props => [name, email, password, phoneNumber];
}
