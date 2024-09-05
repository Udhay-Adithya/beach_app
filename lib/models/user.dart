import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class User with _$User {
  const factory User({
    String? username,
    String? email,
    List<Map<String, String>>? favoritedBeaches,
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
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
