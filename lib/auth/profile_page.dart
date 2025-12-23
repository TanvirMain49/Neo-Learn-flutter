import 'package:first_project/auth/auth.service.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentEmail = AuthServices().getCurrentUser();
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile page"),
      ),
      body: Center(
        child: Text(currentEmail.toString()),
      ),
    );


    return const Placeholder();
  }
}
