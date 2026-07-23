import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class FeatureEvents extends StatelessWidget {
  // final FeaturedEvent featureEvent;
   final EventModel  event;
  FeatureEvents({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Container(
        width: 320,
        height: 250,
        decoration: BoxDecoration(
          // color:Colors.grey,
          image: DecorationImage(
            image: AssetImage(event.Image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 91, 73, 228),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        event.Type,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Icon(Ionicons.heart_outline, color: Colors.black),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      event.Name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        event.Date,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        event.Location,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                //   Container(
                //     width: 90,
                //     height:30,
                //     decoration: BoxDecoration(
                //  color:Color(0xFF6C5CE7),
                //  borderRadius: BorderRadius.circular(7),
                //     ),
                //     child:Center(child: Text("ETB 500",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)))
                //   )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
