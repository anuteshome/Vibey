import "package:flutter/material.dart";
import "package:vibey/feature/auth/data/repository/auth_repository.dart";
import "package:supabase_flutter/supabase_flutter.dart";

class HomePage extends StatelessWidget {
   HomePage({super.key});



  void Logout(){
      final authRepsitory = AuthRepository(Supabase.instance.client);
      authRepsitory.logout;

      Navigator.pushAndRemoveUntil(context, newRoute, predicate)
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vibey"),
        actions: [IconButton(icon: Icon(Icons.logout), onPressed: Logout,)]
      ),
            body: Text("Homepage"),
    );
  }
}
