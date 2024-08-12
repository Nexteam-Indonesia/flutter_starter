import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:next_starter/common/extensions/object_extension.dart';

class SessionModel extends Equatable {
  final String? token;
  final DateTime? expiresAt;

  const SessionModel({this.token, this.expiresAt});

  factory SessionModel.fromMap(Map<String, Object?> data) => SessionModel(
        token: data['token'].toStringX(),
        expiresAt: data['expires_at'].toDateX(),
      );

  Map<String, dynamic> toMap() => {
        'token': token,
        'expires_at': expiresAt?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SessionModel].
  factory SessionModel.fromJson(String data) {
    return SessionModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SessionModel] to a JSON string.
  String toJson() => json.encode(toMap());

  SessionModel copyWith({
    String? token,
    DateTime? expiresAt,
  }) {
    return SessionModel(
      token: token ?? this.token,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }

  @override
  List<Object?> get props => [token, expiresAt];
}
