import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class EventDetailName extends StatelessWidget {
  const EventDetailName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,right:20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Addis Music Fest",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "ETB 200",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6C5CE7),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Ionicons.star, color: Color(0xFF6C5CE7),size: 17),
              SizedBox(width:5),
              Text("4.8"),
              SizedBox(width:5),
              Text("(230 Reviews)"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 120,left:20,top:10),
          child: Text("Don't spend another week polishing shadows, fonts, or colors. The homepage is good enough to move forward."),
        ),
     Padding(
       padding: const EdgeInsets.only(left: 20,right:20,top:15),
       child: Container(
        decoration:BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
        ),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
          child: Column(
            children:[
              Row(
                children:[
                  Container(
                    width:40,
                    height:40,
                    decoration: BoxDecoration(
                     color: Color.fromARGB(255, 221, 218, 239),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Ionicons.calendar_outline,color: Color(0xFF6C5CE7),)),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Date and Time",style:TextStyle(fontWeight: FontWeight.bold,fontSize:15)),
                        Text("July 30,2025 10:00 AM"),
                      ],
                    )
          
                ]
              )
            ]
          ),
        ),
        // Location Section
       ),
     ),

      Padding(
       padding: const EdgeInsets.only(left: 20,right:20),
       child: Container(
        decoration:BoxDecoration(
          color:Colors.white,
          // borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
        ),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
          child: Column(
            children:[
              Row(
                children:[
                  Container(
                    width:40,
                    height:40,
                    decoration: BoxDecoration(
                    color: Color.fromARGB(255, 221, 218, 239),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Ionicons.location,color: Color(0xFF6C5CE7))),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Location",style:TextStyle(fontWeight: FontWeight.bold,fontSize:15)),
                        Text("meskel Sequre, Addis Ababa, Ethiopia"),
                      ],
                    )
          
                ]
              )
            ]
          ),
        ),
        )
        ),

          Padding(
       padding: const EdgeInsets.only(left: 20,right:20),
       child: Container(
        decoration:BoxDecoration(
          color:Colors.white,
          // borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
        ),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
          child: Column(
            children:[
              Row(
                children:[
                  Container(
                    width:40,
                    height:40,
                    decoration: BoxDecoration(
                    color: Color.fromARGB(255, 221, 218, 239),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Ionicons.people,color: Color(0xFF6C5CE7))),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Organizer",style:TextStyle(fontWeight: FontWeight.bold,fontSize:15)),
                        Text("Vibey Events"),
                      ],
                    )
          
                ]
              )
            ]
          ),
        ),
        )
        ),
       

         Padding(
       padding: const EdgeInsets.only(left: 20,right:20),
       child: Container(
        decoration:BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
        ),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
          child: Column(
            children:[
              Row(
                children:[
                  Container(
                    width:40,
                    height:40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 221, 218, 239),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Ionicons.duplicate,color: Color(0xFF6C5CE7))),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Catagory",style:TextStyle(fontWeight: FontWeight.bold,fontSize:15)),
                        Text("Music Festival"),
                      ],
                    )
          
                ]
              )
            ]
          ),
        ),
        )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Text("About This Event",style:TextStyle(fontWeight:FontWeight.bold,fontSize:16)),
              SizedBox(height: 5,),
              Text("It introduces navigation, passing data between screens, and builds directly toward the core purpose of Vibey: finding an event,"),
            ],
          ),
        )
      ],
    );
  }
}
