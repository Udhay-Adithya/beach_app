import 'dart:convert';

class User {
  String? username;
  String? email;
  List<String>? favoritedBeaches;
  String? profilePictureUrl;
  bool? receiveAlerts;
  bool? receiveAlertsForFavorites;
  String? location;
  DateTime? accountCreatedAt;
  DateTime? lastLoginAt;
  String? uid;
  List<String>? visitedBeaches;
  String? role;
  int? points;
  List<String>? badges;

  User({
    this.username,
    this.email,
    this.favoritedBeaches,
    this.profilePictureUrl,
    this.receiveAlerts,
    this.receiveAlertsForFavorites,
    this.location,
    this.accountCreatedAt,
    this.lastLoginAt,
    this.uid,
    this.visitedBeaches,
    this.role,
    this.points,
    this.badges,
  });

  User copyWith({
    String? username,
    String? email,
    List<String>? favoritedBeaches,
    String? profilePictureUrl,
    bool? receiveAlerts,
    bool? receiveAlertsForFavorites,
    String? location,
    DateTime? accountCreatedAt,
    DateTime? lastLoginAt,
    String? uid,
    List<String>? visitedBeaches,
    String? role,
    int? points,
    List<String>? badges,
  }) {
    return User(
      username: username ?? this.username,
      email: email ?? this.email,
      favoritedBeaches: favoritedBeaches ?? this.favoritedBeaches,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      receiveAlerts: receiveAlerts ?? this.receiveAlerts,
      receiveAlertsForFavorites: receiveAlertsForFavorites ?? this.receiveAlertsForFavorites,
      location: location ?? this.location,
      accountCreatedAt: accountCreatedAt ?? this.accountCreatedAt,
      lastLoginAt: lastLoginAt ?? this.lastLoginAt,
      uid: uid ?? this.uid,
      visitedBeaches: visitedBeaches ?? this.visitedBeaches,
      role: role ?? this.role,
      points: points ?? this.points,
      badges: badges ?? this.badges,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'email': email,
      'favoritedBeaches': favoritedBeaches,
      'profilePictureUrl': profilePictureUrl,
      'receiveAlerts': receiveAlerts,
      'receiveAlertsForFavorites': receiveAlertsForFavorites,
      'location': location,
      'accountCreatedAt': accountCreatedAt?.toIso8601String(),
      'lastLoginAt': lastLoginAt?.toIso8601String(),
      'uid': uid,
      'visitedBeaches': visitedBeaches,
      'role': role,
      'points': points,
      'badges': badges,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      username: map['username'] != null ? map['username'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      favoritedBeaches: List<String>.from(map['favoritedBeaches'] ?? []),
      profilePictureUrl: map['profilePictureUrl'] as String?,
      receiveAlerts: map['receiveAlerts'] as bool?,
      receiveAlertsForFavorites: map['receiveAlertsForFavorites'] as bool?,
      location: map['location'] as String?,
      accountCreatedAt: map['accountCreatedAt'] != null ? DateTime.parse(map['accountCreatedAt']) : null,
      lastLoginAt: map['lastLoginAt'] != null ? DateTime.parse(map['lastLoginAt']) : null,
      uid: map['uid'] as String?,
      visitedBeaches: List<String>.from(map['visitedBeaches'] ?? []),
      role: map['role'] as String?,
      points: map['points'] as int?,
      badges: List<String>.from(map['badges'] ?? []),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(username: $username, email: $email, favoritedBeaches: $favoritedBeaches, '
        'profilePictureUrl: $profilePictureUrl, receiveAlerts: $receiveAlerts, receiveAlertsForFavorites: $receiveAlertsForFavorites, '
        'location: $location, accountCreatedAt: $accountCreatedAt, lastLoginAt: $lastLoginAt, uid: $uid, visitedBeaches: $visitedBeaches, '
        'role: $role, points: $points, badges: $badges)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return
      other.username == username &&
      other.email == email &&
      other.favoritedBeaches == favoritedBeaches &&
      other.profilePictureUrl == profilePictureUrl &&
      other.receiveAlerts == receiveAlerts &&
      other.receiveAlertsForFavorites == receiveAlertsForFavorites &&
      other.location == location &&
      other.accountCreatedAt == accountCreatedAt &&
      other.lastLoginAt == lastLoginAt &&
      other.uid == uid &&
      other.visitedBeaches == visitedBeaches &&
      other.role == role &&
      other.points == points &&
      other.badges == badges;
  }

  @override
  int get hashCode {
    return username.hashCode ^
      email.hashCode ^
      favoritedBeaches.hashCode ^
      profilePictureUrl.hashCode ^
      receiveAlerts.hashCode ^
      receiveAlertsForFavorites.hashCode ^
      location.hashCode ^
      accountCreatedAt.hashCode ^
      lastLoginAt.hashCode ^
      uid.hashCode ^
      visitedBeaches.hashCode ^
      role.hashCode ^
      points.hashCode ^
      badges.hashCode;
  }
}
