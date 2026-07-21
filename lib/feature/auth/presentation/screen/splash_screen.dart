import "package:flutter/material.dart";


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
body:SafeArea(
  child: Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children:[
        Image.asset('lib/assets/image/logo.png',width: 50,height: 50,),
        Text("Vibey"),
        Row(
          mainAxisSize:MainAxisSize.min,
          children: [
            Text("Find"),
            SizedBox(width: 10),
             Text("Book"),
              SizedBox(width: 10),
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