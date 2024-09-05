import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../models/user.dart';

class UserPreferences {
  static const _userKey = 'user';

  // Save user to shared_preferences
  static Future<void> saveUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userJson = jsonEncode(user.toJson());
    await prefs.setString(_userKey, userJson);
    log("Save locally ${userJson}");
  }

  // Load user from shared_preferences
  static Future<User?> loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userJson = prefs.getString(_userKey);
    log("$userJson");

    if (userJson == null) {
      return null; // If no user is stored, return null
    }

    Map<String, dynamic> userMap = jsonDecode(userJson);
    return User.fromJson(userMap);
  }

  // Remove user from shared_preferences
  static Future<void> removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userKey);
  }
}
