// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  String? username;
  String? email;
  User({
    this.username,
    this.email,
  });

  User copyWith({
    String? username,
    String? email,
  }) {
    return User(
      username: username ?? this.username,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      username: map['username'] != null ? map['username'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'User(username: $username, email: $email)';

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;
  
    return
      other.username == username &&
      other.email == email;
  }

  @override
  int get hashCode => username.hashCode ^ email.hashCode;
}
