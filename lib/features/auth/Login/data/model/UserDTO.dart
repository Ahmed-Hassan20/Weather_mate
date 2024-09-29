class UserDTO {
  static const String collectionName = "users";

  String? id;
  String? name;
  String? email;
  String? phoneNumber;
  UserDTO(
      {required this.id,
      required this.name,
      required this.email,
      required this.phoneNumber});

}
