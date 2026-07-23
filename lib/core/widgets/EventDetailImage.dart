import "package:flutter/material.dart";


class EventDetailImage extends StatelessWidget {
  const EventDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
   width: 390,
   height:220,
   decoration:BoxDecoration(
    image:DecorationImage(image: AssetImage("assets/image/image.png"),fit:BoxFit.cover),
    borderRadius: BorderRadius.circular(12)
   ),
   child:Padding(
     padding: const EdgeInsets.symmetric(vertical:10),
     child: Column(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Container(
            decoration:BoxDecoration(
              color:Color.fromARGB(255, 95, 55, 162),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
              child: Text("Featured", style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold),),
            )),
        ),
      ],
      ),
   )


    );
  }
}