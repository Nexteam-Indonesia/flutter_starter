import 'package:equatable/equatable.dart';

class WorkTypesModel extends Equatable {
  final String? workFromOffice;
  final String? workFromAnywhere;

  const WorkTypesModel({this.workFromOffice, this.workFromAnywhere});

  factory WorkTypesModel.fromJson(Map<String, dynamic> json) => WorkTypesModel(
        workFromOffice: json['WORK_FROM_OFFICE'] as String?,
        workFromAnywhere: json['WORK_FROM_ANYWHERE'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'WORK_FROM_OFFICE': workFromOffice,
        'WORK_FROM_ANYWHERE': workFromAnywhere,
      };

  WorkTypesModel copyWith({
    String? workFromOffice,
    String? workFromAnywhere,
  }) {
    return WorkTypesModel(
      workFromOffice: workFromOffice ?? this.workFromOffice,
      workFromAnywhere: workFromAnywhere ?? this.workFromAnywhere,
    );
  }

  @override
  List<Object?> get props => [workFromOffice, workFromAnywhere];
}
