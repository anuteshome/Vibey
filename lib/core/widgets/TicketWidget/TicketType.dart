import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";


class TicketType extends StatelessWidget {
  final TicketType ticketModel;
  const TicketType({super.key,required this.ticketModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        // Text("Choose Ticket Type",style:TextStyle(fontSize:17,fontWeight:FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
          child: Container(
            decoration:BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color.fromARGB(255, 153, 144, 222))
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
                  Text(ticketModel.Type,style:TextStyle(fontSize:17,fontWeight:FontWeight.bold)),
                  SizedBox(height: 5,),
                  SizedBox(
                    width:250,
                    child: Text("Once a user can go from opening the app to successfully,",style:TextStyle(color:Colors.grey[700],fontWeight:FontWeight.bold)))
                ]
              ),
              Text("ETB ${ticketModel.Price}",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold))
                ]
              ),
            ),
          ),
        )
      ]
    );
  }
}