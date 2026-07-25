import "package:flutter/material.dart";
import "package:vibey/models/Attende/AttendeModel.dart";


class TicketType extends StatelessWidget {
  final TicketTypes ticket;
  const TicketType({super.key,required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        // Text("Choose Ticket Type",style:TextStyle(fontSize:17,fontWeight:FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 20),
          child: Container(
            decoration:BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: const Offset(0,4)
                  ),

              ]
              // border: Border.all(color: Color.fromARGB(255, 153, 144, 222))
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment:CrossAxisAlignment.start ,
                children:[
              Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children:[
                  Text(ticket.Type,style:TextStyle(fontSize:17,fontWeight:FontWeight.bold)),
                  SizedBox(height: 5,),
                  SizedBox(
                    width:250,
                    child: Text(ticket.Discription,style:TextStyle(color:Colors.grey[700],fontWeight:FontWeight.bold)))
                ]
              ),
              Text("ETB ${ticket.Price}",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold))
                ]
              ),
            ),
          ),
        )
      ]
    );
  }
}