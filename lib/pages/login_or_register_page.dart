import 'package:flutter/material.dart';
import 'package:hot_or_not/pages/login_page.dart';
import 'package:hot_or_not/pages/register_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _loginOrRegisterPageState();
}

  class _loginOrRegisterPageState extends State<LoginOrRegisterPage> {
    // initially show login page
    bool showLoginPage = true;

    // toggle between login and register page
    void togglePages() {
      setState(() {
        showLoginPage = !showLoginPage;
      });
    }

  @override
  Widget build(BuildContext context) {
      if (showLoginPage) {
        return LoginPage(
          onTap: togglePages,
        );
      } else {
        return RegisterPage(
          onTap: togglePages,
        );
      }
  }
}