class User {
  final String uid;
  final String userName;
  final String email;

  User({required this.uid, required this.userName, required this.email});

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'userName': userName,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        uid: map['uid'] ?? '',
        userName: map['userName'] ?? '',
        email: map['email'] ?? '',
    );
  }
}
