import 'package:equatable/equatable.dart';

import 'work_types_model.dart';

class AttendancePolicyModel extends Equatable {
  final int? id;
  final double? officeLatitude;
  final double? officeLongitude;
  final int? inOfficeRadius;
  final String? clockInTime;
  final String? clockOutTime;
  final String? breakStartTime;
  final String? breakEndTime;
  final WorkTypesModel? workTypes;

  const AttendancePolicyModel({
    this.id,
    this.officeLatitude,
    this.officeLongitude,
    this.inOfficeRadius,
    this.clockInTime,
    this.clockOutTime,
    this.breakStartTime,
    this.breakEndTime,
    this.workTypes,
  });

  factory AttendancePolicyModel.fromJson(Map<String, dynamic> json) {
    return AttendancePolicyModel(
      id: json['id'] as int?,
      officeLatitude: (json['office_latitude'] as num?)?.toDouble(),
      officeLongitude: (json['office_longitude'] as num?)?.toDouble(),
      inOfficeRadius: json['in_office_radius'] as int?,
      clockInTime: json['clock_in_time'] as String?,
      clockOutTime: json['clock_out_time'] as String?,
      breakStartTime: json['break_start_time'] as String?,
      breakEndTime: json['break_end_time'] as String?,
      workTypes: json['work_types'] == null
          ? null
          : WorkTypesModel.fromJson(json['work_types'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'office_latitude': officeLatitude,
        'office_longitude': officeLongitude,
        'in_office_radius': inOfficeRadius,
        'clock_in_time': clockInTime,
        'clock_out_time': clockOutTime,
        'break_start_time': breakStartTime,
        'break_end_time': breakEndTime,
        'work_types': workTypes?.toJson(),
      };

  AttendancePolicyModel copyWith({
    int? id,
    double? officeLatitude,
    double? officeLongitude,
    int? inOfficeRadius,
    String? clockInTime,
    String? clockOutTime,
    String? breakStartTime,
    String? breakEndTime,
    WorkTypesModel? workTypes,
  }) {
    return AttendancePolicyModel(
      id: id ?? this.id,
      officeLatitude: officeLatitude ?? this.officeLatitude,
      officeLongitude: officeLongitude ?? this.officeLongitude,
      inOfficeRadius: inOfficeRadius ?? this.inOfficeRadius,
      clockInTime: clockInTime ?? this.clockInTime,
      clockOutTime: clockOutTime ?? this.clockOutTime,
      breakStartTime: breakStartTime ?? this.breakStartTime,
      breakEndTime: breakEndTime ?? this.breakEndTime,
      workTypes: workTypes ?? this.workTypes,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      officeLatitude,
      officeLongitude,
      inOfficeRadius,
      clockInTime,
      clockOutTime,
      breakStartTime,
      breakEndTime,
      workTypes,
    ];
  }
}
