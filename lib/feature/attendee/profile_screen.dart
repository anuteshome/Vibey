import "package:flutter/material.dart";
import "package:vibey/feature/auth/data/repository/auth_repository.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:vibey/feature/auth/presentation/screen/login_screen.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class ProfilePage extends StatefulWidget {
  final EventModel event;
  const ProfilePage({super.key,required this.event});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final authRepsitory = AuthRepository(Supabase.instance.client);
  bool _isLoggingOut = false;

  Future<void> Logout() async {
    if (_isLoggingOut) return;
    setState(() {
      _isLoggingOut = true;
    });

    try {
      await authRepsitory.logout();
      if (!mounted) return;
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginPage(event:widget.event)),
        (route) => false,
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoggingOut = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vibey"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _isLoggingOut ? null : Logout,
          ),
        ],
      ),
      body: Text("Profile page"),
    );
  }
}
