import "package:flutter/material.dart";

class TextFeilds extends StatelessWidget {
  const TextFeilds({super.key});
  // final Controller = TextEdittingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10),
      child: Container(
        width: double.infinity,
        height: 70,
        // icon:Icon(Icons.email)
        child: TextField(
          // controller: Controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            contentPadding: EdgeInsets.all(15),
            hintText: "Enter your...",
            prefixIcon: Icon(Icons.email),
            
          ),
        ),
      ),
    );
  }
}
