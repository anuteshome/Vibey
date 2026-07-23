import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class Catagories extends StatelessWidget {
  final Catagorie cata;
  const Catagories({super.key, required this.cata});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:(cata.color),
        ),
        child: Column(children: [SizedBox(height: 20), Icon(cata.icon),SizedBox(height: 6), Text(cata.Name)]),
      ),
    );
  }
}
