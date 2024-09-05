// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      username: json['username'] as String?,
      email: json['email'] as String?,
      favoritedBeaches: (json['favoritedBeaches'] as List<dynamic>?)
          ?.map((e) => Map<String, String>.from(e as Map))
          .toList(),
      profilePictureUrl: json['profilePictureUrl'] as String?,
      receiveAlerts: json['receiveAlerts'] as bool?,
      receiveAlertsForFavorites: json['receiveAlertsForFavorites'] as bool?,
      location: json['location'] as String?,
      accountCreatedAt: json['accountCreatedAt'] == null
          ? null
          : DateTime.parse(json['accountCreatedAt'] as String),
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
      uid: json['uid'] as String?,
      visitedBeaches: (json['visitedBeaches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      role: json['role'] as String?,
      points: (json['points'] as num?)?.toInt(),
      badges:
          (json['badges'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'favoritedBeaches': instance.favoritedBeaches,
      'profilePictureUrl': instance.profilePictureUrl,
      'receiveAlerts': instance.receiveAlerts,
      'receiveAlertsForFavorites': instance.receiveAlertsForFavorites,
      'location': instance.location,
      'accountCreatedAt': instance.accountCreatedAt?.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
      'uid': instance.uid,
      'visitedBeaches': instance.visitedBeaches,
      'role': instance.role,
      'points': instance.points,
      'badges': instance.badges,
    };
