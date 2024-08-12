import 'package:equatable/equatable.dart';
import 'package:next_starter/common/extensions/object_extension.dart';

class PostModel extends Equatable {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const PostModel({this.userId, this.id, this.title, this.body});

  factory PostModel.fromJson(Map<String, Object?> json) => PostModel(
        userId: json['userId'].toIntX(),
        id: json['id'].toIntX(),
        title: json['title'].toStringX(),
        body: json['body'].toStringX(),
      );

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };

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
