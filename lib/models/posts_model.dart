// Suggested code may be subject to a license. Learn more: ~LicenseLog:659868682.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3534340252.
class PostsModel {
  final int id;
  final int userId;
  final String title;
  final String body;

  PostsModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory PostsModel.fromJson(Map<String, dynamic> json) {
    return PostsModel(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }
}
