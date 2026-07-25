import "package:flutter/material.dart";


class YourSelection extends StatelessWidget {
  const YourSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          decoration: BoxDecoration(
            // color:Colors.white
          ),
            child: Container(
           decoration: BoxDecoration(
            // color:Colors.white
           ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Padding(
                    padding: const EdgeInsets.only(top:20,bottom:10),
                    child: Column(
                    
                      children:[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Your Selection",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
                      ),
                      ]
                    ),
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
                            padding: const EdgeInsets.only(left: 15,right:15,top: 20,bottom:10),
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
                                    color: const Color.fromARGB(255, 216, 214, 214),
                                      
                                    )
                                  )
                                ),
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Quantity",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                  Text("2",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                ],
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                            child: Container(
                               decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                   color: const Color.fromARGB(255, 216, 214, 214),
                                      
                                    )
                                  )
                                ),
                            ),
                          ),
                            Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Price Per Ticket",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                  Text("2000",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                ],
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                            child: Container(
                               decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                    color: const Color.fromARGB(255, 216, 214, 214),
                                      
                                    )
                                  )
                                ),
                            ),
                          ),
                            Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Subtotal",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                  Text("4000",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                ],
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                            child: Container(
                               decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                   color: const Color.fromARGB(255, 216, 214, 214),
                                      
                                    )
                                  )
                                ),
                            ),
                          ),
                            Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Service Fee",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                  Text("200",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                ],
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                            child: Container(
                               decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: const Color.fromARGB(255, 216, 214, 214),
                                      
                                      
                                    )
                                  )
                                ),
                            ),
                          ), 
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right:15,top: 10,bottom:20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total Price",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                  Text("4200",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                                ],
                              ),
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