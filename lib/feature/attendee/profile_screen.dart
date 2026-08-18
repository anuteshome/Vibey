import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/feature/auth/data/repository/auth_repository.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:vibey/feature/auth/presentation/screen/login_screen.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/models/Attende/BookingModel.dart";

class ProfilePage extends StatefulWidget {
  final EventModel event;
  final BookingModel book;
  final TicketTypes ticket;
  const ProfilePage({
    super.key,
    required this.event,
    required this.book,
    required this.ticket,
  });

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
        MaterialPageRoute(
          builder: (context) => LoginPage(
            event: widget.event,
            book: widget.book,
            ticket: widget.ticket,
          ),
        ),
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
      backgroundColor: Color(0xFF6C5CE7),
      // appBar: AppBar(
      //   title: Text("Vibey"),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.logout),
      //       onPressed: _isLoggingOut ? null : Logout,
      //     ),
      //   ],
      // ),
      body: Stack(
        clipBehavior:Clip.none,
        children: [ Column(
             crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Ionicons.settings_outline,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
        
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child:Padding(
                  padding: const EdgeInsets.only(top:120,left:25,right:25),
                  child: Column(
                       crossAxisAlignment:CrossAxisAlignment.start,
                    children:[
                     Container(
                      decoration:BoxDecoration(
                        border: BoxBorder.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12)
                      ),
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20,vertical:20),
                         child: Row(
                         mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                             children: [
                            Text("12",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
                            Text("My Tickets")
                            ],
                          ),
                          VerticalDivider(
                   thickness: 1,
                   width:1,
                   color:Colors.black
                          ),
                              Column(
                                                children: [
                                                  Text("5",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
                                                  Text("Upcoming")
                                                ],
                                              ),
                                                  VerticalDivider(
                   thickness: 2,
                   width:1,
                   color:Colors.black
                          ),
                                            Column(
                                                children: [
                                                  Text("7",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
                                                  Text("Past Events")
                                                ],
                                              )
                                            ],
                                          ),
                       ),
                     ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical:15),
                          child: Text("Account",style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)),
                        ),

             Container(
              decoration:BoxDecoration(
            // color:Colors.grey 
            ),
           child:Column(
                  children:[
Padding(
  padding: const EdgeInsets.symmetric(vertical:15,horizontal: 10),
  child: Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children:[
      Row(
        children: [
          Icon(Ionicons.person_outline,color:Colors.black),
          SizedBox(width:20),
          Text("Personal Information",style:TextStyle(color:Colors.black)),
        ],
      ),
      Column(
        children: [
          Icon(Ionicons.chevron_forward_outline,color:Colors.black),
        ],
      )
    ]
  ),
),
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 15,),
   child: Divider(
        color: Colors.grey, // Line color
        thickness: 1,       // Line thickness
        height: 20,   
   ),
 ),
Padding(
  padding: const EdgeInsets.symmetric(vertical:15,horizontal: 10),
  child: Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children:[
      Row(
        children: [
          Icon(Ionicons.wallet_outline,color:Colors.black),
          SizedBox(width:20),
          Text("Payment Methods",style:TextStyle(color:Colors.black)),
        ],
      ),
      Column(
        children: [
          Icon(Ionicons.chevron_forward_outline,color:Colors.black),
        ],
      )
    ]
  ),
),
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 15,),
   child: Divider(
        color: Colors.grey, // Line color
        thickness: 1,       // Line thickness
        height: 20,   
   ),
 ),

Padding(
  padding: const EdgeInsets.symmetric(vertical:15,horizontal: 10),
  child: Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children:[
      Row(
        children: [
          Icon(Ionicons.heart_outline,color:Colors.black),
          SizedBox(width:20),
          Text("My Favorite",style:TextStyle(color:Colors.black)),
        ],
      ),
      Column(
        children: [
          Icon(Ionicons.chevron_forward_outline,color:Colors.black),
        ],
      )
    ]
  ),
),
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 15,),
   child: Divider(
        color: Colors.grey, // Line color
        thickness: 1,       // Line thickness
        height: 20,   
   ),
 ),
Padding(
  padding: const EdgeInsets.symmetric(vertical:15,horizontal: 10),
  child: Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children:[
      Row(
        children: [
          Icon(Ionicons.notifications_outline,color:Colors.black),
          SizedBox(width:20),
          Text("Notification Setting",style:TextStyle(color:Colors.black)),
        ],
      ),
      Column(
        children: [
          Icon(Ionicons.chevron_forward_outline,color:Colors.black),
        ],
      )
    ]
  ),
),
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 15,),
   child: Divider(
        color: Colors.grey, // Line color
        thickness: 1,       // Line thickness
        height: 20,   
   ),
 ),
Padding(
  padding: const EdgeInsets.symmetric(vertical:5,horizontal: 10),
  child: Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children:[
      Row(
        children: [
          Icon(Ionicons.help_circle_outline,color:Colors.black),
          SizedBox(width:20),
          Text("Help & Support",style:TextStyle(color:Colors.black)),
        ],
      ),
      Column(
        children: [
          Icon(Ionicons.chevron_forward_outline,color:Colors.black),
        ],
      )
    ]
  ),
),
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 15,),
   child: Divider(
        color: Colors.grey, // Line color
        thickness: 1,       // Line thickness
        height: 20,   
   ),
 ),
Padding(
  padding: const EdgeInsets.symmetric(vertical:5,horizontal: 10),
  child: Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children:[
      Row(
        children: [
          Icon(Ionicons.information_circle_outline,color:Colors.black),
          SizedBox(width:20),
          Text("About Vibey",style:TextStyle(color:Colors.black)),
        ],
      ),
      Column(
        children: [
          Icon(Ionicons.chevron_forward_outline,color:Colors.black),
        ],
      )
    ]
  ),
),

                       ]
                       )
              )
                    ]
                  ),
                  
                )
              ),
            ),
          ],
        ),
            Positioned(
              top:160,
              left:25,
              child: Container(
               width: 150,
              height:150,
             decoration:BoxDecoration(
            // color:Colors.black,
            image: DecorationImage(
              image:AssetImage("assets/image/mypic.png"),
              fit: BoxFit.cover,
               ),
             borderRadius: BorderRadius.circular(80),
            )
         ),
            ),

                    Positioned(
                      top:210,
                      right:50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                                   Text("Ananya Teshome",style:TextStyle(fontSize:23,fontWeight:FontWeight.bold)),
                                   Text("ananyateshome2@gmail.com"),
                                   SizedBox(height:5),
                                   Container( 
                                    decoration: BoxDecoration(
                                      color:Color.fromARGB(255, 205, 200, 244),
                                      borderRadius:BorderRadius.circular(12)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                      child: Text("Attende"),
                                    )),
                        ],
                      ),
                    ),
        ]
      ),
    );
  }
}
