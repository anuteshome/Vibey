import "package:flutter/material.dart";


class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:300,
      height:100,
      child: Row(
        children:[
          Image.asset("assets/image/logo.png"),
          Column(
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
    );
  }
}