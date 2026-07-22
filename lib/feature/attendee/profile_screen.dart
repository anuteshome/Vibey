import "package:flutter/material.dart";


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vibey"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => Logout(context),
          ),
        ],
      ),
      body:Text("Profile page")
    );
  }
}