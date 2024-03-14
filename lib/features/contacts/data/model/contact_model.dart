class ContactModel {
  final String name;
  final String profilePic;
  final String phoneNumber;
  final String lastSeen;

  ContactModel(
      {required this.name,
      required this.profilePic,
      required this.phoneNumber,
      required this.lastSeen});

  factory ContactModel.fromJson(jsonData) {
    return ContactModel(
        name: jsonData['name'],
        profilePic: jsonData['profile_pic'],
        phoneNumber: jsonData['phone_number'],
        lastSeen: jsonData['last_seen']);
  }
}
