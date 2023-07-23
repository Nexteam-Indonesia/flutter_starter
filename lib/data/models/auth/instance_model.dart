import 'attendance_policy_model.dart';

class InstanceModel {
  final int? id;
  final String? name;
  final String? code;
  final String? email;
  final String? phoneNumber;
  final String? fax;
  final String? website;
  final String? address;
  final String? postalCode;
  final String? logo;
  final DateTime? createdAt;
  final AttendancePolicyModel? attendancePolicy;

  InstanceModel({
    this.id,
    this.name,
    this.code,
    this.email,
    this.phoneNumber,
    this.fax,
    this.website,
    this.address,
    this.postalCode,
    this.logo,
    this.createdAt,
    this.attendancePolicy,
  });

  InstanceModel copyWith({
    int? id,
    String? name,
    String? code,
    String? email,
    String? phoneNumber,
    String? fax,
    String? website,
    String? address,
    String? postalCode,
    String? logo,
    DateTime? createdAt,
    AttendancePolicyModel? attendancePolicy,
  }) =>
      InstanceModel(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        fax: fax ?? this.fax,
        website: website ?? this.website,
        address: address ?? this.address,
        postalCode: postalCode ?? this.postalCode,
        logo: logo ?? this.logo,
        createdAt: createdAt ?? this.createdAt,
        attendancePolicy: attendancePolicy ?? this.attendancePolicy,
      );

  factory InstanceModel.fromJson(Map<String, dynamic> json) => InstanceModel(
        id: json["id"],
        name: json["name"],
        code: json["code"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        fax: json["fax"],
        website: json["website"],
        address: json["address"],
        postalCode: json["postal_code"],
        logo: json["logo"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        attendancePolicy: json["attendance_policy"] == null
            ? null
            : AttendancePolicyModel.fromJson(json["attendance_policy"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
        "email": email,
        "phone_number": phoneNumber,
        "fax": fax,
        "website": website,
        "address": address,
        "postal_code": postalCode,
        "logo": logo,
        "created_at": createdAt?.toIso8601String(),
        "attendance_policy": attendancePolicy?.toJson(),
      };
}
