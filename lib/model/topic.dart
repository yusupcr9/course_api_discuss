import 'package:course_discuss_app/model/user.dart';

class Topic {
  String id;
  String title;
  String description;
  String images;
  String idUser;
  String createdAt;
  String updatedAt;
  User? user;

  Topic({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.idUser,
    required this.createdAt,
    required this.updatedAt,
    this.user,
  });

  factory Topic.fromJson(Map<String, dynamic> json) => Topic(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        images: json["images"],
        idUser: json["id_user"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "images": images,
        "id_user": idUser,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
