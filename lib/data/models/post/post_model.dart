import 'dart:convert';

import 'package:equatable/equatable.dart';

class PostModel extends Equatable {
	final int? userId;
	final int? id;
	final String? title;
	final String? body;

	const PostModel({this.userId, this.id, this.title, this.body});

	factory PostModel.fromMap(Map<String, dynamic> data) => PostModel(
				userId: data['userId'] as int?,
				id: data['id'] as int?,
				title: data['title'] as String?,
				body: data['body'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'userId': userId,
				'id': id,
				'title': title,
				'body': body,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PostModel].
	factory PostModel.fromJson(String data) {
		return PostModel.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [PostModel] to a JSON string.
	String toJson() => json.encode(toMap());

	PostModel copyWith({
		int? userId,
		int? id,
		String? title,
		String? body,
	}) {
		return PostModel(
			userId: userId ?? this.userId,
			id: id ?? this.id,
			title: title ?? this.title,
			body: body ?? this.body,
		);
	}

	@override
	List<Object?> get props => [userId, id, title, body];
}
