class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Kelompok 3 ",
      username: "kelompokTigas",
      email: "kelompokTigas@usumlah.com",
      profilePhoto:
          "https://media.istockphoto.com/id/476085198/id/foto/siluet-pebisnis-sebagai-avatar-atau-gambar-profil-default.jpg?b=1&s=612x612&w=0&k=20&c=lBEs5J7_LN-NathZ9qlsVqNT6Nnf0YniN6AnskjXpPw=",
      phoneNumber: "Mana",
    );
  }
}

