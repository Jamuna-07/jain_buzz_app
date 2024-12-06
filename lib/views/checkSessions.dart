import 'package:jain_buzz/auth.dart';
import 'package:jain_buzz/views/homepage.dart';
import 'package:jain_buzz/views/login.dart';

import 'package:flutter/material.dart';

class CheckSessions extends StatefulWidget {
  const CheckSessions({super.key});

  @override
  State<CheckSessions> createState() => _CheckSessionsState();
}

class _CheckSessionsState extends State<CheckSessions> {
  @override
  void initState() {
    checkSessions().then((value) {
      if (value) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Homepage()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }

  checkSessions() {}
}
