import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class BookingSuccess extends StatelessWidget {
  const BookingSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:150,bottom: 30),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF6C5CE7),
                  borderRadius: BorderRadius.circular(50),
                ),
                child:Icon(Ionicons.checkmark_outline,size: 40,color: Colors.white,)
              ),
            ),
            Text("Booking Successfull!",style:TextStyle(fontSize:28,fontWeight:FontWeight.bold)),
            SizedBox(height:15),
             SizedBox(
              width:190,
               child:Text("Your ticket has been booked successfully",style: TextStyle(color:Colors.grey[700]),textAlign: TextAlign.center,),
              ),
           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
              child: Container(
                decoration: BoxDecoration(
                  color:Colors.grey[100],
                    borderRadius:BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Booking ID",style:TextStyle(fontWeight:FontWeight.bold,color:Colors.grey[700])),
                        SizedBox(height: 10,),
                         Text("VIB-2025-0524-7890",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold))],
                      ),
                      Icon(Ionicons.copy_outline),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical:15),
              child: Row(
                children:[
                  Icon(Ionicons.calendar_clear_outline),
                  SizedBox(width:20),
                  Text("Sat 24, May 2025 6:00PM",style:TextStyle(fontWeight:FontWeight.bold,color:Colors.grey[700])),
                ]
              ),
            ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
               child: Row(
                children:[
                  Icon(Ionicons.location_outline),
                   SizedBox(width:20),
                  Text("Minilium Hall Addis Ababa",style:TextStyle(fontWeight:FontWeight.bold,color:Colors.grey[700])),
                ]
                           ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical:20),
               child: Container(
                decoration: BoxDecoration(
                  color:Color(0xFF6C5CE7),
                  borderRadius:BorderRadius.circular(10)
                ),
                child:Center(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                  child: Text("View My Tickets",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:15)),
                ))
               ),
             ),

              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical:20),
               child: Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius:BorderRadius.circular(10)
                ),
                child:Center(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                  child: Text("Back to Home",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:15)),
                ))
               ),
             )
          ],
        ),
      ),
    );
  }
}
