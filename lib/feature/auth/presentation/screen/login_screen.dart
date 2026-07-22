import "package:flutter/material.dart";
import "package:vibey/core/widgets/TextField.dart";
import "package:vibey/feature/attendee/homepage_screen.dart";
import "package:vibey/feature/auth/data/repository/auth_repository.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:vibey/feature/auth/presentation/screen/signup_screen.dart";

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final EmailTextController = TextEditingController();
  final PasswordTextController = TextEditingController();
  final authRepository = AuthRepository(Supabase.instance.client);
  final session = Supabase.instance.client.auth.currentSession;
  bool isLoading = false;

  Future<void> Login() async {
    String email = EmailTextController.text.trim();
    String password = PasswordTextController.text;
  

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please Add Email and Password")),
      );
      return;
    }

    if (!email.contains("@")) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("please and vaild email")));
      return;
    }
    if (password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Password must be greater than 6")),
      );
      return;
    }
    setState(() {
      isLoading = true;
    });
    try {
      final response = await authRepository.login(
        email: email,
        password: password,
      );
      if (!mounted) return;
      if (response.user != null) {
        print("Login succesfully");
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Login success")));
      }
      debugPrint('User ID: ${response.user!.id}');
      debugPrint('Email: ${response.user!.email}');
    } on AuthException catch (er) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(er.message)));
    } catch (error) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Something went wrong")));
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F4FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/image/logos.png',
                      width: 250,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                    // SizedBox(height: 20),
                    const Text(
                      "Vibey",
                      style: TextStyle(
                        color: Color(0xFF6C5CE7),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
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

                    // SizedBox(height: 20),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Sign in to discover amazing events",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      width: 350,
                      // height:350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            TextFeilds(
                              Controller: EmailTextController,
                              hintText: "Enter your email...",
                              preficIcon: Icons.email,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            TextFeilds(
                              Controller: PasswordTextController,
                              hintText: "Enter your password...",
                              preficIcon: Icons.lock,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Forgot password",
                                style: TextStyle(
                                  color: Color(0xFF6C5CE7),
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            GestureDetector(
                              onTap: Login,
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFF6C5CE7),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: isLoading
                                      ? const CircularProgressIndicator(
                                          color: Colors.white,
                                        )
                                      : const Text(
                                          "Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Color(0xFF6C5CE7),
                                    width: 1.0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.email, color: Color(0xFF6C5CE7)),
                                    SizedBox(width: 20),
                                    Text(
                                      "Continue With Google",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ?"),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        ),
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(color: Color(0xFF6C5CE7)),
                      ),
                    ),
                  ],
                ),
              ],
              // Login section
            ),
          ),
        ),
      ),
    );
  }
}
