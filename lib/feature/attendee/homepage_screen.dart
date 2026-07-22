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
        height:260,
        
        decoration: BoxDecoration(

        //  image:DecorationImage(
        //   image:AssetImage("assets/image/image.png"),
        //   fit: BoxFit.cover,
        //  )
          color:Colors.grey[100],
        ),
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.only(left: 30,right:30,top:40,bottom: 20),
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
        Text("Hello Annaya",style:TextStyle(color:Colors.white,fontSize:15,fontWeight:FontWeight.bold)),
        Text("Discover Events That inspire You",style:TextStyle(color:Colors.white,fontSize:25,fontWeight:FontWeight.bold)),
        Text("Find amazing events around you and create unforgatable momments",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold)),
            ],
          ),
        )
        
        
          ]
        ),
      ),
    );
  }
}
