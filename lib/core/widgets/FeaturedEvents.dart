import "package:flutter/material.dart";


class FeatureEvents extends StatelessWidget {
  const FeatureEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
          child: Container(
            width:double.infinity,
            height:250,
            decoration: BoxDecoration(
              // color:Colors.grey,
              image:DecorationImage(
                image:AssetImage("assets/image/image.png"),
                fit: BoxFit.cover,
              ),
              borderRadius:BorderRadius.circular(20),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical:13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                    Container(
                      width: 80,
                      height:25,
                      decoration: BoxDecoration(
                        color:Color.fromARGB(255, 91, 73, 228),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Center(child: Text("Featured",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)))),
                    Container(
                      width: 35,
                      height:35,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(50),
                        color:Colors.white,
                      ),
                      child: Icon(Icons.lock,color: Colors.grey,),
                    )
                    ]
                  ),
                ),
     
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical:15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text("Addis Music Festical",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:25)),
                          Text("Jull 30",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:15)),
                           Text("Bole Ednamoll",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:15)),
                        ]
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
                )
              ]
            )
          ),
        );
  }
}