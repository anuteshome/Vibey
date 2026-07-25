import "package:flutter/material.dart";


class YourSelection extends StatelessWidget {
  const YourSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          decoration: BoxDecoration(
            color:Colors.white
          ),
            child: Container(
 
              child: Column(
                children:[
                  Column(
                    children:[
              Text("Your Selection"),
                    ]
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                                      decoration: BoxDecoration(
                                color:Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                // border: Border.all(color: Colors.black)
                                boxShadow:[ 
                                  BoxShadow(blurRadius: 2,color: Colors.grey)]
                                     ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Ticket Type",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                  Text("Vip",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                ],
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                            child: Container(
                               decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey,
                                      
                                    )
                                  )
                                ),
                            ),
                          ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Quantity"),
                              Text("2"),
                            ],
                          ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Price per ticket"),
                              Text("ETB 2000"),
                            ],
                          ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Subtotal"),
                              Text("ETB 4000"),
                            ],
                          ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Service Fee"),
                              Text("ETB 200"),
                            ],
                          ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total Amount"),
                              Text("4200"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
              
                ]
              ),
            ),
          )
        
      ]
    );
  }
}