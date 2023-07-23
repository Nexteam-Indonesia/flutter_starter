import 'package:equatable/equatable.dart';

class RegisterDto extends Equatable {
  final String? nip;
  final String? name;
  final String? email;
  final String? password;
  final String? phoneNumber;
  final int? instanceId;
  final String? instanceCode;
  final int? unit1;
  final int? unit2;
  final int? unit3;

  const RegisterDto({
    this.nip,
    this.name,
    this.email,
    this.password,
    this.phoneNumber,
    this.instanceId,
    this.instanceCode,
    this.unit1,
    this.unit2,
    this.unit3,
  });

  factory RegisterDto.fromJson(Map<String, dynamic> json) => RegisterDto(
        nip: json['nip']?.toString(),
        name: json['name'] as String?,
        email: json['email'] as String?,
        password: json['password'] as String?,
        phoneNumber: json['phone_number'] as String?,
        instanceId: json['instance_id'] as int?,
        instanceCode: json['instance_code'] as String?,
        unit1: json['unit_1'] as int?,
        unit2: json['unit_2'] as int?,
        unit3: json['unit_3'] as int?,
      );

  Map<String, dynamic> toJson() => {
        // 'nip': nip,
        'name': name,
        'email': email,
        'password': password,
        'phone_number': phoneNumber,
        'instance_id': instanceId,
        'instance_code': instanceCode,
        'unit_1': unit1,
        // 'unit_2': unit2,
        // 'unit_3': unit3,
      };

  RegisterDto copyWith({
    String? nip,
    String? name,
    String? email,
    String? password,
    String? phoneNumber,
    int? instanceId,
    String? instanceCode,
    int? unit1,
    int? unit2,
    int? unit3,
  }) {
    return RegisterDto(
      nip: nip ?? this.nip,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      instanceId: instanceId ?? this.instanceId,
      instanceCode: instanceCode ?? this.instanceCode,
      unit1: unit1 ?? this.unit1,
      unit2: unit2,
      unit3: unit3,
    );
  }

  @override
  List<Object?> get props {
    return [
      nip,
      name,
      email,
      password,
      phoneNumber,
      instanceId,
      instanceCode,
      unit1,
      unit2,
      unit3,
    ];
  }
}
