import "package:flutter/material.dart";

class TextFeilds extends StatelessWidget {
  const TextFeilds({super.key});
  // final Controller = TextEdittingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 100,
      // icon:Icon(Icons.email)
      child: TextField(
      
        // controller: Controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          contentPadding: EdgeInsets.all(20),
          hintText: "Enter your...",
          prefixIcon: Icon(Icons.email)
        ),
      ),
    );
  }
}
