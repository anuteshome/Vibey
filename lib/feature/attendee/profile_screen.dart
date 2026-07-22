import "package:flutter/material.dart";
import "package:vibey/feature/auth/data/repository/auth_repository.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:vibey/feature/auth/presentation/screen/login_screen.dart";


class ProfilePage extends StatelessWidget {
   ProfilePage({super.key});

  final authRepsitory = AuthRepository(Supabase.instance.client);

  void Logout(BuildContext context) async {
    await authRepsitory.logout();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (route) => false
    );
  }

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