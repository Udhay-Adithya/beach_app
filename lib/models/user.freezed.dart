// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  List<Map<String, String>>? get favoritedBeaches =>
      throw _privateConstructorUsedError;
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  bool? get receiveAlerts => throw _privateConstructorUsedError;
  bool? get receiveAlertsForFavorites => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  DateTime? get accountCreatedAt => throw _privateConstructorUsedError;
  DateTime? get lastLoginAt => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  List<String>? get visitedBeaches => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  List<String>? get badges => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? username,
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
      List<String>? badges});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? favoritedBeaches = freezed,
    Object? profilePictureUrl = freezed,
    Object? receiveAlerts = freezed,
    Object? receiveAlertsForFavorites = freezed,
    Object? location = freezed,
    Object? accountCreatedAt = freezed,
    Object? lastLoginAt = freezed,
    Object? uid = freezed,
    Object? visitedBeaches = freezed,
    Object? role = freezed,
    Object? points = freezed,
    Object? badges = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritedBeaches: freezed == favoritedBeaches
          ? _value.favoritedBeaches
          : favoritedBeaches // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveAlerts: freezed == receiveAlerts
          ? _value.receiveAlerts
          : receiveAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      receiveAlertsForFavorites: freezed == receiveAlertsForFavorites
          ? _value.receiveAlertsForFavorites
          : receiveAlertsForFavorites // ignore: cast_nullable_to_non_nullable
              as bool?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCreatedAt: freezed == accountCreatedAt
          ? _value.accountCreatedAt
          : accountCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      visitedBeaches: freezed == visitedBeaches
          ? _value.visitedBeaches
          : visitedBeaches // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      badges: freezed == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
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
      List<String>? badges});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? favoritedBeaches = freezed,
    Object? profilePictureUrl = freezed,
    Object? receiveAlerts = freezed,
    Object? receiveAlertsForFavorites = freezed,
    Object? location = freezed,
    Object? accountCreatedAt = freezed,
    Object? lastLoginAt = freezed,
    Object? uid = freezed,
    Object? visitedBeaches = freezed,
    Object? role = freezed,
    Object? points = freezed,
    Object? badges = freezed,
  }) {
    return _then(_$UserImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritedBeaches: freezed == favoritedBeaches
          ? _value.favoritedBeaches
          : favoritedBeaches // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveAlerts: freezed == receiveAlerts
          ? _value.receiveAlerts
          : receiveAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      receiveAlertsForFavorites: freezed == receiveAlertsForFavorites
          ? _value.receiveAlertsForFavorites
          : receiveAlertsForFavorites // ignore: cast_nullable_to_non_nullable
              as bool?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCreatedAt: freezed == accountCreatedAt
          ? _value.accountCreatedAt
          : accountCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      visitedBeaches: freezed == visitedBeaches
          ? _value.visitedBeaches
          : visitedBeaches // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      badges: freezed == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.username,
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
      this.badges});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? username;
  @override
  final String? email;
  @override
  final List<Map<String, String>>? favoritedBeaches;
  @override
  final String? profilePictureUrl;
  @override
  final bool? receiveAlerts;
  @override
  final bool? receiveAlertsForFavorites;
  @override
  final String? location;
  @override
  final DateTime? accountCreatedAt;
  @override
  final DateTime? lastLoginAt;
  @override
  final String? uid;
  @override
  final List<String>? visitedBeaches;
  @override
  final String? role;
  @override
  final int? points;
  @override
  final List<String>? badges;

  @override
  String toString() {
    return 'User(username: $username, email: $email, favoritedBeaches: $favoritedBeaches, profilePictureUrl: $profilePictureUrl, receiveAlerts: $receiveAlerts, receiveAlertsForFavorites: $receiveAlertsForFavorites, location: $location, accountCreatedAt: $accountCreatedAt, lastLoginAt: $lastLoginAt, uid: $uid, visitedBeaches: $visitedBeaches, role: $role, points: $points, badges: $badges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other.favoritedBeaches, favoritedBeaches) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.receiveAlerts, receiveAlerts) ||
                other.receiveAlerts == receiveAlerts) &&
            (identical(other.receiveAlertsForFavorites,
                    receiveAlertsForFavorites) ||
                other.receiveAlertsForFavorites == receiveAlertsForFavorites) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.accountCreatedAt, accountCreatedAt) ||
                other.accountCreatedAt == accountCreatedAt) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality()
                .equals(other.visitedBeaches, visitedBeaches) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.points, points) || other.points == points) &&
            const DeepCollectionEquality().equals(other.badges, badges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      email,
      const DeepCollectionEquality().hash(favoritedBeaches),
      profilePictureUrl,
      receiveAlerts,
      receiveAlertsForFavorites,
      location,
      accountCreatedAt,
      lastLoginAt,
      uid,
      const DeepCollectionEquality().hash(visitedBeaches),
      role,
      points,
      const DeepCollectionEquality().hash(badges));

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? username,
      final String? email,
      final List<Map<String, String>>? favoritedBeaches,
      final String? profilePictureUrl,
      final bool? receiveAlerts,
      final bool? receiveAlertsForFavorites,
      final String? location,
      final DateTime? accountCreatedAt,
      final DateTime? lastLoginAt,
      final String? uid,
      final List<String>? visitedBeaches,
      final String? role,
      final int? points,
      final List<String>? badges}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get username;
  @override
  String? get email;
  @override
  List<Map<String, String>>? get favoritedBeaches;
  @override
  String? get profilePictureUrl;
  @override
  bool? get receiveAlerts;
  @override
  bool? get receiveAlertsForFavorites;
  @override
  String? get location;
  @override
  DateTime? get accountCreatedAt;
  @override
  DateTime? get lastLoginAt;
  @override
  String? get uid;
  @override
  List<String>? get visitedBeaches;
  @override
  String? get role;
  @override
  int? get points;
  @override
  List<String>? get badges;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
