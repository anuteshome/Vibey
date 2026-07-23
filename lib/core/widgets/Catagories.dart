import "package:flutter/material.dart";

class Catagories extends StatelessWidget {
  final IconData icon;
  final String Name;
  final String just;
  const Catagories({super.key, required this.Name,required this.just,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        // color:(just),
      ),
      child: Column(
        children: [SizedBox(height: 20), Icon(icon), Text(Name)],
      ),
    );
  }
}
