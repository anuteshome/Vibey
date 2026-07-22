import "package:flutter/material.dart";
import "package:vibey/feature/auth/data/repository/auth_repository.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:vibey/feature/auth/presentation/screen/login_screen.dart";

class HomePage extends StatelessWidget {
  HomePage({super.key});
final authRepsitory = AuthRepository(Supabase.instance.client);

  void Logout(BuildContext context) async {
    await authRepsitory.logout();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (route) => false
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                  backgroundColor: Color.fromARGB(255, 229, 226, 246),
      // appBar: AppBar(
      //   title: Text("Vibey"),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.logout),
      //       onPressed: () => Logout(context),
      //     ),
      //   ],
      // ),
      body: Container(
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.only(left: 30,right:30,top:50,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Vibey",style:TextStyle(fontSize:25,color:Color(0xFF6C5CE7),fontWeight:FontWeight.bold)),
                  Row(
                    children:[
                      Icon(Icons.person),
                      SizedBox(width:20),
                      Container(
                        width:50,
                        height:50,
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(50),
                          color:Colors.grey,
                        )
                      )
                    ]
                  )
                ]
              ),
            ),
        // Hero
        Padding(
          padding: const EdgeInsets.only(left: 20,right:90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Text("Hello Ananya 👋",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
        SizedBox(height:5),
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: Text("Discover Events That inspire You",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
        ),
        // Search
            ],
          ),
        ),
        SizedBox(height:10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width:double.infinity,
            height:60,
            color:Colors.white,
           child:TextField(
            decoration:InputDecoration(
              border:InputBorder.none
            )
           )
          ),
        )
          ]
        ),
      ),
    );
  }
}
