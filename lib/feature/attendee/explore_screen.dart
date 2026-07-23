import "package:flutter/material.dart";
import "package:vibey/core/widgets/EventDetailImage.dart";


class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Event Detail Test"),
      ),
      body:Center(
        child: Column(
          children:[
            EventDetailImage(),
          ]
        ),
      )
    );
  }
}