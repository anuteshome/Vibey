import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class TicketDetail extends StatelessWidget {
  const TicketDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Header
          Container(
            child: Column(
              children: [
                Text("VIP-2 Tickets"),
                Text("Addis Music Festival 2025"),
                Text("Sat,24 May 2025 6:00 AM"),
                Text("Minilium Hall, Addis Ababa"),
              ],
            ), // QR Code
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Column(children: [Text("Booking Id"), Text("VIB-2025-0524-7890")]),
              Icon(Ionicons.copy_outline),
            ],
          ),
        ],
      ),
    );
  }
}
