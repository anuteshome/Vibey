import "package:flutter/material.dart";


class YourSelection extends StatelessWidget {
  const YourSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          child:Column(
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Ticket Type"),
                  Text("Vip"),
                ],
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
              )

            ]
          )
        )
      ]
    );
  }
}