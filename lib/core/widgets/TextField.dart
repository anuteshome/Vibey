import "package:flutter/material.dart";

class TextFeilds extends StatelessWidget {
  final TextEditingController Controller;
  final String hintText;
  final IconData preficIcon;

  TextFeilds({super.key, required this.Controller, required this.hintText,required this.preficIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: double.infinity,
        height: 70,
        // icon:Icon(Icons.email)
        child: TextField(
          controller: Controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            contentPadding: EdgeInsets.all(15),
            hintText: hintText,
            prefixIcon: Icon(preficIcon),
          ),
        ),
      ),
    );
  }
}
