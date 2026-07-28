import "package:flutter/material.dart";
import "package:vibey/feature/attendee/homepage_screen.dart";
import "package:vibey/feature/auth/presentation/screen/login_screen.dart";
import "package:supabase_flutter/supabase_flutter.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _navigationStarted = false;

  Future<void> _openNextScreen() async {
    if (_navigationStarted) return;
    _navigationStarted = true;

    final session = Supabase.instance.client.auth.currentSession;
    if (session == null) {
      await Future.delayed(const Duration(seconds: 3));
    }

    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => session != null ? HomePage() : LoginPage(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _openNextScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F4FF),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/image/logos.png',
                width: 250,
                height: 150,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 20),
              const Text(
                "Vibey",
                style: TextStyle(
                  color: Color(0xFF6C5CE7),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Find",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF6C5CE7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFFF6B9D),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Book",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF6C5CE7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF6B9D),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Enjoy",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF6C5CE7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color(0xFF6C5CE7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 219, 215, 242),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 219, 215, 242),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Loading amazing events...",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
