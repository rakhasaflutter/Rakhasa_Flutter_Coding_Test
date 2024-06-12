// Suggested code may be subject to a license. Learn more: ~LicenseLog:659868682.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3534340252.
class UsersModel {
  final int id;
  final String name;
  UsersModel({
    required this.id,
    required this.name,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
