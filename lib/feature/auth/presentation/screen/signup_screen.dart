import "package:flutter/material.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:vibey/core/widgets/TextField.dart";
import "package:vibey/feature/auth/data/repository/auth_repository.dart";
import "package:vibey/feature/auth/presentation/screen/login_screen.dart";

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final NameController = TextEditingController();
  final authRespository = AuthRepository(Supabase.instance.client);
  bool isLoading = false;

  Future<void> SignUp() async {
    final name = NameController.text.trim();
    final email = EmailController.text.trim();
    final password = PasswordController.text;

    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }

    if (!email.contains('@')) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("please enter vaild email")));
      return;
    }

    if (password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Password must be grater than 6")),
      );
      return;
    }
    setState(() {
      isLoading = true;
    });
    try {
      final response = await authRespository.signup(
        email: email,
        name: name,
        password: password,
      );
      if (!mounted) return;
      if (response.user != null) {
        if (response.session == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Account Created! please confirm your account"),
            ),
          );
        }else{
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Signup success")));
        }
       
      }
    } on AuthException catch (er) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(er.message)));
    } catch (error) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("something went wrong")));
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
              // SizedBox(height: 20),
              Text(
                "Create Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Sign up to discover amazing events",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 370,
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
                      SizedBox(height: 10),
                      Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFeilds(
                        Controller: NameController,
                        hintText: "Enter Your Name",
                        preficIcon: Icons.person,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFeilds(
                        Controller: EmailController,
                        hintText: "Enter Your Email",
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
                        Controller: PasswordController,
                        hintText: "Enter Password",
                        preficIcon: Icons.lock,
                      ),
                      SizedBox(height: 10),
                      // Login button
                      GestureDetector(
                        onTap: isLoading ? null : SignUp,
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF6C5CE7),
                          ),

                          child: Center(
                            child: isLoading
                                ? CircularProgressIndicator(color: Colors.white)
                                : Text(
                                    "Signup",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "I Do Have An Account!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              ),
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Color(0xFF6C5CE7),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
