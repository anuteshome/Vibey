import "package:flutter/material.dart";


class TicketType extends StatelessWidget {
  const TicketType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Text("Choose Ticket Type"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
          child: Container(
            decoration:BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0xFF6C5CE7))
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment:CrossAxisAlignment.start ,
                children:[
              Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children:[
                  Text("VIP",style:TextStyle(fontSize:17,fontWeight:FontWeight.bold)),
                  SizedBox(height: 5,),
                  SizedBox(
                    width:250,
                    child: Text("Once a user can go from opening the app to successfully,",style:TextStyle(color:Colors.grey[700],fontWeight:FontWeight.bold)))
                ]
              ),
              Text("ETB 2000",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold))
                ]
              ),
            ),
          ),
        )
      ]
    );
  }
}