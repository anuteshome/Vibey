import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/models/Attende/BookingModel.dart";

class TicketDetail extends StatelessWidget {
  final BookingModel book;
  const TicketDetail({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F4FF),
      appBar: AppBar(
        title: Center(
          child: Text(
            "Ticket Detail",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            // color:Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF6C5CE7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 233, 233),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 3,
                          ),
                          child: Text(
                            "${book.SelectedTickets.Type}-${book.Quantity} Tickets",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        book.event.Name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Ionicons.calendar_clear_outline,
                            size: 15,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                           book.event.Date,
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          SizedBox(width: 5),
                          Text(
                          book.event.Time,
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Ionicons.location_outline,
                            size: 15,
                            color: Colors.white,
                            weight: 800,
                          ),
                          SizedBox(width: 5),
                          Text(
                          book.event.Location,
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ), // QR Code
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Booking Id",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "VIB-2025-0524-7890",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(Ionicons.copy_outline),
                  ],
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/image/qrcode.png",
                  width: 300,
                  height: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ticket Type",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          book.SelectedTickets.Type,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quantity",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                       book.Quantity.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Paid",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          book.TotalPaid.toString,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Purchase Date",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                        " ${book.event.Date} ${book.event.Time}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF6C5CE7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 20,
                    ),
                    child: Center(
                      child: Text(
                        "Download Ticket",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
