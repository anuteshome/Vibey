import "package:flutter/material.dart";
import "package:vibey/core/widgets/MyTickets/TicketDetail.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/core/widgets/TicketWidget/TicketEvent.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/models/Attende/BookingModel.dart";

class TicketUpcoming extends StatelessWidget {
  // final EventModel event;
  final BookingModel book;
  // final TicketTypes ticket;
  const TicketUpcoming({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            TicketEvent(event: book.event),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 215, 212, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Ionicons.ticket_outline,
                          color: Color(0xFF6C5CE7),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ticket Type",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            book.SelectedTickets.Type,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF6C5CE7),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 215, 212, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Ionicons.people, color: Color(0xFF6C5CE7)),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Quantity",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${book.Quantity}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF6C5CE7),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 215, 212, 242),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Ionicons.wallet, color: Color(0xFF6C5CE7)),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Paid",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "ETB ${book.TotalPaid}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF6C5CE7),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 255, 235),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Row(
                        children: [
                          Icon(Ionicons.checkmark_circle, color: Colors.green),
                          SizedBox(width: 3),
                          Text(
                            "Confirmed",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TicketDetail()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0XFF6C5CE7),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Row(
                          children: [
                            Icon(Ionicons.film, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              "View Tickets",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
