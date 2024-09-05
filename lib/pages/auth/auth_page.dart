import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../features/bottom_nav_bar.dart';
import 'signin.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Check the authentication state using FirebaseAuth
    return StreamBuilder<User?>(
      // Firebase provides a stream that we can listen to for auth state changes
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // If the snapshot has data, it means the user is signed in
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          // User is signed in, navigate to MyBNB (your home page)
          return const MyBNB();
        } else {
          // User is not signed in, navigate to the SignIn page
          return const SignIn();
        }
      },
    );
  }
}
