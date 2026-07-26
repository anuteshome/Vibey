import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";


class EventDetailImage extends StatelessWidget {
  final EventModel event ;
  const EventDetailImage({super.key,required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(event.Image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 95, 55, 162),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 3,
                  ),
                  child: Text(
                    event.Type,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
