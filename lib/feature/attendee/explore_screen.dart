import "package:flutter/material.dart";
import "package:vibey/core/widgets/EventDetailImage.dart";
import "package:vibey/core/widgets/EventDetailName.dart";
import "package:vibey/models/Attende/AttendeModel.dart";


class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 229, 226, 246),
      appBar:AppBar(
        title: Text("Event Detail Test"),
      ),
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children:[
              EventDetailImage(),
              EventDetailName(UpcomingEvent:UpcomingEvent),
            ]
          ),
        ),
      )
    );
  }
}