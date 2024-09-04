import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../componenets/my_button.dart';
import '../../componenets/theme_switch_button.dart';
import '../features/bottom_nav_bar.dart';
import 'signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  bool _isObscure = true;

  void singIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        actions: const [
          ThemeSwitchButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            // Inner fields Column
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Welcome\nback,",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 56,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    validator: (value) => value == null || value.isEmpty
                        ? 'Please enter the purpose of visit'
                        : null,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    controller: _usernamecontroller,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.mail_outline_rounded,
                      ),
                      hintText: "Email",
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    validator: (value) => value == null || value.isEmpty
                        ? 'Please enter the purpose of visit'
                        : null,
                    controller: _passwordcontroller,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(
                          _isObscure
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                      hintText: "Password",
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password ?",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  MyButton(
                    'Login',
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          type: PageTransitionType.fade,
                          child: const MyBNB(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    indent: 15,
                    color: Theme.of(context).colorScheme.tertiary,
                    thickness: 0.8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Or continue with",
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    endIndent: 15,
                    color: Theme.of(context).colorScheme.tertiary,
                    thickness: 0.8,
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 12,
                ),
                Icon(Icons.search),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member ?",
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        type: PageTransitionType.fade,
                        child: const Signup(),
                      ),
                    );
                  },
                  child: const Text(
                    "Register now",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
