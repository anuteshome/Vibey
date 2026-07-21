import "package:flutter/material.dart";
import "package:vibey/core/widgets/TextField.dart";

class LoginPage extends StatelessWidget {
  final EmailTextController = TextEditingController();
  final PasswordTextController = TextEditingController();
   LoginPage({super.key});

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
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFF6C5CE7),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
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
                                    Icon(Icons.email,color: Color(0xFF6C5CE7),),
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
                      onTap: () => {},
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
