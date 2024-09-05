import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/store_user_data.dart';
import '../models/user.dart';

class UserNotifier extends StateNotifier<User?> {
  bool isLoading = true;
  UserNotifier() : super(null) {
    loadUser(); // Load the saved user when the notifier is created
  }

// Load the saved user when initializing the UserNotifier
  Future<void> loadUser() async {
    User? savedUser = await UserPreferences.loadUser();
    if (savedUser != null) {
      state = savedUser;
    }
    isLoading = false; // Set loading to false once done
  }

  // Update user's profile information
  void updateUser(User updatedUser) {
    state = updatedUser;
  }

  // Update specific fields
  void updateUsername(String newUsername) {
    state = state!.copyWith(username: newUsername);
  }

  void updateEmail(String newEmail) {
    state = state!.copyWith(email: newEmail);
  }

  void updatePoints(int newPoints) {
    state = state!.copyWith(points: newPoints);
  }

  // Update favoritedBeaches by adding or removing a beach
  void updateFavoritedBeaches(Map<String, String> beach) {
    // Check if the beach is already in the list
    if (state!.favoritedBeaches != null &&
        state!.favoritedBeaches!
            .any((existingBeach) => mapEquals(existingBeach, beach))) {
      // If it exists, remove it
      state = state!.copyWith(
        favoritedBeaches: state!.favoritedBeaches!
            .where((existingBeach) => !mapEquals(existingBeach, beach))
            .toList(),
      );
    } else {
      // If it doesn't exist, add it
      List<Map<String, String>> updatedBeaches = state!.favoritedBeaches ?? [];
      updatedBeaches.add(beach);

      state = state!.copyWith(favoritedBeaches: updatedBeaches);
    }
  }
}

final userProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  final userNotifier = UserNotifier();
  userNotifier.loadUser();
  return UserNotifier();
});
