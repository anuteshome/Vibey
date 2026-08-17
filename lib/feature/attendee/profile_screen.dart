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
  const ProfilePage({super.key,required this.event , required this.book, required this.ticket});

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
        MaterialPageRoute(builder: (context) => LoginPage(event:widget.event,book: widget.book,ticket:widget.ticket,)),
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
      backgroundColor:Color(0xFF6C5CE7),
      // appBar: AppBar(
      //   title: Text("Vibey"),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.logout),
      //       onPressed: _isLoggingOut ? null : Logout,
      //     ),
      //   ],
      // ),
      body: Column(
        children:[
         Container(
            width:double.infinity,
            height: 250,
            decoration: BoxDecoration(

            ),
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
              Text("Profile",style:TextStyle(color:Colors.white,fontSize:30,)),
              Icon(Ionicons.settings_outline,size: 30,color: Colors.white,)
              ]
             ),
           )
           ),
           Expanded(
             child: Container(
                       width:double.infinity,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(20),
                          topRight:Radius.circular(20)
                        ),
              color:Colors.white
                       ),
                      ),
           )

        ]
      ),
    );
  }
}
