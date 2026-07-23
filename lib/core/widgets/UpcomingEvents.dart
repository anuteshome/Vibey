import "package:flutter/material.dart";


class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
      child: Container(
        width:double.infinity,
        height:90,
        decoration:BoxDecoration(
          color:Color.fromARGB(255, 243, 241, 241),
          borderRadius:BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:[
             Container(
            width:120,
            height: 80,
            decoration: BoxDecoration(
            // color:Colors.grey,
            image:DecorationImage(
              image:AssetImage("assets/image/image.png"),
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(12)
          
            ),
             ),
             SizedBox(width:7),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.start ,
                children:[
                  Text("Flutter Developer Meetup",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold,)),
                  SizedBox(height: 5,),
                  Text("Jul 30 2026",style:TextStyle(fontSize:12,)),
                  SizedBox(height: 5,),
                  Text("Addis Ababa",style:TextStyle(fontSize:12,))
                ]
              ),
              Column(
                mainAxisAlignment:MainAxisAlignment.center ,
                children:[
                  Icon(Icons.save_outlined,color: Colors.grey,),
                  SizedBox(height:15),
                  Text("ETB 200",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold,color:Color(0xFF6C5CE7)))
                ]
              )
            ]
          ),
        ),
      ),
    );
  }
}