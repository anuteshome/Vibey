import "package:flutter/material.dart";


class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Container(
        width:double.infinity,
        height:100,
        decoration:BoxDecoration(
          color:Colors.white,
          borderRadius:BorderRadius.circular(12),
        ),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text("Flutter Developer Meetup"),
                Text("Jul 30 2026"),
                Text("Addis Ababa")
              ]
            ),
            Column(
              children:[
                Icon(Icons.save),
                Text("ETB 200")
              ]
            )
          ]
        ),
      ),
    );
  }
}