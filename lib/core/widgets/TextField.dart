import "package:flutter/material.dart";


class TextFeilds extends StatelessWidget {
  const TextFeilds({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:300,
      height:100,
      child:TextField(
      decoration:InputDecoration(
        border: OutlineInputBorder(
          borderRadius:BorderRadius.circular(20)
        )
      )
      )
    );
  }
}