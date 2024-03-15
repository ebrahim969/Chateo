class UserModel {
  final String fristName;
  final String? lastName;
  final String phoneNumber;
  final String? profilePic;
  final String id;

  UserModel(
      {required this.fristName,
      this.lastName,
      required this.phoneNumber,
      this.profilePic,
      required this.id});

  factory UserModel.fromJson(jsonData) {
    return UserModel(
        fristName: jsonData['frist_name'],
        lastName: jsonData['last_name'] ?? "",
        phoneNumber: jsonData['phone_number'],
        profilePic: jsonData['profile_pic'],
        id: jsonData['id'],
        );
  }
}
