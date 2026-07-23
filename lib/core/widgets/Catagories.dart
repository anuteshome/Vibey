import "package:flutter/material.dart";


class Catagories extends StatelessWidget {
  const Catagories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width:70,
            height:80,
            decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color:Colors.blue[100],
            ),
            child:Column(
              children:[
                SizedBox(height:20),
                Icon(Icons.lock),
                Text("Music")
              ]
            )
          );
  }
}