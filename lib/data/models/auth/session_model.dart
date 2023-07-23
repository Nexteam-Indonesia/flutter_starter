import 'dart:convert';

import 'package:equatable/equatable.dart';

class SessionModel extends Equatable {
  final String? token;
  final DateTime? expiresAt;

  const SessionModel({this.token, this.expiresAt});

  factory SessionModel.fromMap(Map<String, dynamic> data) => SessionModel(
        token: data['token'] as String?,
        expiresAt: data['expires_at'] == null
            ? null
            : DateTime.parse(data['expires_at'] as String),
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
