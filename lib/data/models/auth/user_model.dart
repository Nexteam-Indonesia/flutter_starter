import 'package:equatable/equatable.dart';
import 'package:next_starter/common/extensions/object_extension.dart';

import 'instance_model.dart';

class UserModel extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? gender;
  final String? photo;
  final String? phoneNumber;
  final dynamic address;
  final DateTime? createdAt;
  final dynamic province;
  final dynamic city;
  final InstanceModel? instance;
  final List<Unit>? units;
  final List<String>? roles;
  final Employee? employee;
  final List<dynamic>? permissions;

  const UserModel({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.photo,
    this.phoneNumber,
    this.address,
    this.createdAt,
    this.province,
    this.city,
    this.instance,
    this.units,
    this.roles,
    this.employee,
    this.permissions,
  });

  UserModel copyWith({
    int? id,
    String? name,
    String? email,
    String? gender,
    String? photo,
    String? phoneNumber,
    dynamic address,
    DateTime? createdAt,
    dynamic province,
    dynamic city,
    InstanceModel? instance,
    List<Unit>? units,
    List<String>? roles,
    Employee? employee,
    List<dynamic>? permissions,
  }) =>
      UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        gender: gender ?? this.gender,
        photo: photo ?? this.photo,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        province: province ?? this.province,
        city: city ?? this.city,
        instance: instance ?? this.instance,
        units: units ?? this.units,
        roles: roles ?? this.roles,
        employee: employee ?? this.employee,
        permissions: permissions ?? this.permissions,
      );

  factory UserModel.fromJson(Map<String, Object> json) => UserModel(
        id: json["id"].toIntX(),
        name: json["name"].toStringX(),
        email: json["email"].toStringX(),
        gender: json["gender"].toStringX(),
        photo: json["photo"].toStringX(),
        phoneNumber: json["phone_number"].toStringX(),
        address: json["address"].toStringX(),
        createdAt: json["created_at"].toDateX(),
        province: json["province"],
        city: json["city"],
        instance: json["instance"] == null
            ? null
            : InstanceModel.fromJson(json["instance"] as Map<String, Object?>),
        units: json["units"] == null
            ? []
            : List<Unit>.from((json["units"]! as List).map((x) => Unit.fromJson(x))),
        roles:
            json["roles"] == null ? [] : List<String>.from((json["roles"]! as List).map((x) => x)),
        employee: json["employee"] == null
            ? null
            : Employee.fromJson(json["employee"] as Map<String, Object?>),
        permissions: json["permissions"] == null
            ? []
            : List<dynamic>.from((json["permissions"]! as List).map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "gender": gender,
        "photo": photo,
        "phone_number": phoneNumber,
        "address": address,
        "created_at": createdAt?.toIso8601String(),
        "province": province,
        "city": city,
        "instance": instance?.toJson(),
        "units": units == null ? [] : List<dynamic>.from(units!.map((x) => x.toJson())),
        "roles": roles == null ? [] : List<dynamic>.from(roles!.map((x) => x)),
        "employee": employee?.toJson(),
        "permissions": permissions == null ? [] : List<dynamic>.from(permissions!.map((x) => x)),
      };

  @override
  List<Object?> get props => [email, name];
}

class Employee {
  final int? id;
  final String? name;
  final String? email;
  final String? nip;
  final String? phoneNumber;
  final String? npwp;
  final String? personalIdentifier;
  final int? nonEmployee;
  final String? rank;
  final String? position;
  final String? positionEn;
  final String? image;
  final DateTime? createdAt;

  Employee({
    this.id,
    this.name,
    this.email,
    this.nip,
    this.phoneNumber,
    this.npwp,
    this.personalIdentifier,
    this.nonEmployee,
    this.rank,
    this.position,
    this.positionEn,
    this.image,
    this.createdAt,
  });

  Employee copyWith({
    int? id,
    String? name,
    String? email,
    String? nip,
    String? phoneNumber,
    String? npwp,
    String? personalIdentifier,
    int? nonEmployee,
    String? rank,
    String? position,
    String? positionEn,
    String? image,
    DateTime? createdAt,
  }) =>
      Employee(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        nip: nip ?? this.nip,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        npwp: npwp ?? this.npwp,
        personalIdentifier: personalIdentifier ?? this.personalIdentifier,
        nonEmployee: nonEmployee ?? this.nonEmployee,
        rank: rank ?? this.rank,
        position: position ?? this.position,
        positionEn: positionEn ?? this.positionEn,
        image: image ?? this.image,
        createdAt: createdAt ?? this.createdAt,
      );

  factory Employee.fromJson(Map<String, Object?> json) => Employee(
        id: json["id"].toIntX(),
        name: json["name"].toStringX(),
        email: json["email"].toStringX(),
        nip: json["nip"].toStringX(),
        phoneNumber: json["phone_number"].toStringX(),
        npwp: json["npwp"].toStringX(),
        personalIdentifier: json["personal_identifier"].toStringX(),
        nonEmployee: json["non_employee"].toIntX(),
        rank: json["rank"].toStringX(),
        position: json["position"].toStringX(),
        positionEn: json["position_en"].toStringX(),
        image: json["image"].toStringX(),
        createdAt: json["created_at"].toDateX(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "nip": nip,
        "phone_number": phoneNumber,
        "npwp": npwp,
        "personal_identifier": personalIdentifier,
        "non_employee": nonEmployee,
        "rank": rank,
        "position": position,
        "position_en": positionEn,
        "image": image,
        "created_at": createdAt?.toIso8601String(),
      };
}

class Unit {
  final int? id;
  final String? name;
  final String? code;
  final String? unitLevel;
  final String? abbreviation;
  final String? domain;
  final String? logo;
  final DateTime? createdAt;
  final InstanceModel? instance;

  Unit({
    this.id,
    this.name,
    this.code,
    this.unitLevel,
    this.abbreviation,
    this.domain,
    this.logo,
    this.createdAt,
    this.instance,
  });

  Unit copyWith({
    int? id,
    String? name,
    String? code,
    String? unitLevel,
    String? abbreviation,
    String? domain,
    String? logo,
    DateTime? createdAt,
    InstanceModel? instance,
  }) =>
      Unit(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        unitLevel: unitLevel ?? this.unitLevel,
        abbreviation: abbreviation ?? this.abbreviation,
        domain: domain ?? this.domain,
        logo: logo ?? this.logo,
        createdAt: createdAt ?? this.createdAt,
        instance: instance ?? this.instance,
      );

  factory Unit.fromJson(Map<String, Object?> json) => Unit(
        id: json["id"].toIntX(),
        name: json["name"].toStringX(),
        code: json["code"].toStringX(),
        unitLevel: json["unit_level"].toStringX(),
        abbreviation: json["abbreviation"].toStringX(),
        domain: json["domain"].toStringX(),
        logo: json["logo"].toStringX(),
        createdAt: json["created_at"].toDateX(),
        instance: json["instance"] == null
            ? null
            : InstanceModel.fromJson(json["instance"] as Map<String, Object?>),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
        "unit_level": unitLevel,
        "abbreviation": abbreviation,
        "domain": domain,
        "logo": logo,
        "created_at": createdAt?.toIso8601String(),
        "instance": instance?.toJson(),
      };
}
