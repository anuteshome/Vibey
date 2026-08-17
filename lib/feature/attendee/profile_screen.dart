import "package:flutter/material.dart";
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
         Padding(
           padding: const EdgeInsets.only(top:170),
           child: Container(
            // width:double.infinity,
            // height: 400,
            // decoration: BoxDecoration(
            //   color:Colors.white
            // ),
           child: Text("Profile")
           ),
         ),

           Container(
          width:double.infinity,
          height: 400,
          decoration: BoxDecoration(
            color:Colors.white
          ),
         )

        ]
      ),
    );
  }
}
