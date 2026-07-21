import "package:flutter/material.dart";


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
body:SafeArea(
  child: Center(
    child: Column(
      children:[
        Image.asset("assets/image/logo.png"),
        Text("Vibey"),
        Row(
          children: [
            Text("Find"),
             Text("Book"),
              Text("Enjoy")
          ],
        )
      ]
    
          ),
  ),
),
    );
  }
}