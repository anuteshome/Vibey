import "package:flutter/material.dart";
import "package:vibey/feature/auth/data/repository/auth_repository.dart";
import "package:supabase_flutter/supabase_flutter.dart";

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final authRepsitory = AuthRepository(Supabase.instance.client);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vibey"),
        actions: [IconButton(icon: Icon(Icons.logout), onPressed: authRepsitory.logout)],
      ),
      body: Text("Homepage"),
    );
  }
}
