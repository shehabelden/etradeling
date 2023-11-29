class UserData {
  final String id;
  final String name;
  final String? image;
  final String email;
  final double latitude;
  final double longitude;

  UserData({
    required this.name,
    required this.email,
    required this.longitude,
    required this.latitude,
    required this.id,
    required this.image,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
        email: json["email"] ?? "no email",
        name: json["name"] ?? 'no name',
        longitude: json["longitude"],
        latitude: json["latitude"],
        image: json["profileImage"],
        id: json["id"] ?? 'no name');
  }
}
