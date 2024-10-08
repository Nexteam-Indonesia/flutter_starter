import 'package:equatable/equatable.dart';
import 'package:next_starter/common/extensions/object_extension.dart';

import 'instance_model.dart';

class UnitInstanceModel extends Equatable {
  final int? id;
  final String? name;
  final String? code;
  final String? unitLevel;
  final String? abbreviation;
  final String? domain;
  final String? logo;
  final String? createdAt;
  final dynamic parent;
  final InstanceModel? instance;
  final dynamic attendanceUnitSetting;

  const UnitInstanceModel({
    this.id,
    this.name,
    this.code,
    this.unitLevel,
    this.abbreviation,
    this.domain,
    this.logo,
    this.createdAt,
    this.parent,
    this.instance,
    this.attendanceUnitSetting,
  });

  factory UnitInstanceModel.fromJson(Map<String, Object?> json) {
    return UnitInstanceModel(
      id: json['id'].toIntX(),
      name: json['name'].toStringX(),
      code: json['code'].toStringX(),
      unitLevel: json['unit_level'].toStringX(),
      abbreviation: json['abbreviation'].toStringX(),
      domain: json['domain'].toStringX(),
      logo: json['logo'].toStringX(),
      createdAt: json['created_at'].toStringX(),
      parent: json['parent'] as dynamic,
      instance: json['instance'] == null
          ? null
          : InstanceModel.fromJson(json['instance'] as Map<String, dynamic>),
      attendanceUnitSetting: json['attendance_unit_setting'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'code': code,
        'unit_level': unitLevel,
        'abbreviation': abbreviation,
        'domain': domain,
        'logo': logo,
        'created_at': createdAt,
        'parent': parent,
        'instance': instance?.toJson(),
        'attendance_unit_setting': attendanceUnitSetting,
      };

  UnitInstanceModel copyWith({
    int? id,
    String? name,
    String? code,
    String? unitLevel,
    String? abbreviation,
    String? domain,
    String? logo,
    String? createdAt,
    dynamic parent,
    InstanceModel? instance,
    dynamic attendanceUnitSetting,
  }) {
    return UnitInstanceModel(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      unitLevel: unitLevel ?? this.unitLevel,
      abbreviation: abbreviation ?? this.abbreviation,
      domain: domain ?? this.domain,
      logo: logo ?? this.logo,
      createdAt: createdAt ?? this.createdAt,
      parent: parent ?? this.parent,
      instance: instance ?? this.instance,
      attendanceUnitSetting: attendanceUnitSetting ?? this.attendanceUnitSetting,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      code,
      unitLevel,
      abbreviation,
      domain,
      logo,
      createdAt,
      parent,
      instance,
      attendanceUnitSetting,
    ];
  }
}
