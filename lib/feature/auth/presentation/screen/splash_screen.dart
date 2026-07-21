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
        Image.asset('lib/assets/image/logos.png',width: 510,height: 150,),
        SizedBox(height:20),
        Text("Vibey",
        style:TextStyle(color:Color(0xFF6C5CE7),fontSize:50,fontWeight:FontWeight.bold)),
        SizedBox(height:20),
        Row(
          mainAxisSize:MainAxisSize.min,
          children: [
            Text("Find",
            style:TextStyle(fontSize:17,color:Color(0xFF6C5CE7),fontWeight:FontWeight.w600)),
            SizedBox(width: 20),
          Container(
            width:8,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
             color:Color(0xFFFF6B9D),
            ),
          ),
   SizedBox(width: 20),
             Text("Book",
             style:TextStyle(fontSize:17,color:Color(0xFF6C5CE7),fontWeight:FontWeight.w600)),
   SizedBox(width: 20),
               Container(
                width:8,
                height:8,
                decoration:BoxDecoration(
                  color:Color(0xFFFF6B9D),
                  borderRadius:BorderRadius.circular(20)

                )
               ),
              SizedBox(width: 20),
              Text("Enjoy",
              style:TextStyle(fontSize:17,color:Color(0xFF6C5CE7),fontWeight:FontWeight.w600))
          ],
        ),
        SizedBox(height: 30),

        Row(
          mainAxisSize:MainAxisSize.min,
          children: [
            Container(
              width:8,
              height:8,
              decoration: BoxDecoration(
                color:Color(0xFF6C5CE7),
                borderRadius:BorderRadius.circular(20),
              ),
            ),
SizedBox(width:20),
            Container(
              width:8,
              height:8,
              decoration: BoxDecoration(
                color:Color.fromARGB(255, 219, 215, 242),
                borderRadius:BorderRadius.circular(20),
              ),
            ),
SizedBox(width:20),
            Container(
              width:8,
              height:8,
              decoration: BoxDecoration(
                color:Color.fromARGB(255, 219, 215, 242),
                borderRadius:BorderRadius.circular(20),
              ),
            ),
          ],
        )
      ]
    
          ),
  ),
),
    );
  }
}