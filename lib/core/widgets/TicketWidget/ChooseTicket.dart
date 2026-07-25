import "package:flutter/material.dart";
import "package:vibey/core/widgets/TicketWidget/TicketType.dart";
import "package:vibey/data/Attende/AttendeData.dart";
import "package:ionicons_plus/ionicons_plus.dart";
import "package:vibey/feature/attendee/BookingSummery.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class ChooseTicket extends StatefulWidget {
  final EventModel event;
  const ChooseTicket({super.key, required this.event});

  @override
  State<ChooseTicket> createState() => _ChooseTicketState();
}

class _ChooseTicketState extends State<ChooseTicket> {
  TicketTypes? _SelectedTickets;
  int _CurrentPrice = 0;
  int? _PassIndex;
  int Quantity = 1;

  @override
  void initState() {
    super.initState();
    _PassIndex = 2;
    _SelectedTickets = widget.event.ticketTypes[2];
    _CurrentPrice = int.parse(_SelectedTickets!.Price);
  }

  void _SelectedTicket(int index, TicketTypes ticket) {
    debugPrint("Ticket selected: ${ticket.Price}");
    setState(() {
      _PassIndex = index;
      _SelectedTickets = ticket;
      _CurrentPrice = Quantity * int.parse(ticket.Price);
    });
  }

  void DecreaseQuantinty() {
    debugPrint("Decrease button pressed");
    if (_SelectedTickets == null || Quantity <= 1) {
      return;
    }

    setState(() {
      Quantity--;
      _CurrentPrice = Quantity * int.parse(_SelectedTickets!.Price);
    });
  }

  void IncreaseQuantity() {
    debugPrint("Increase button pressed");
    if (_SelectedTickets == null) {
      return;
    }
    setState(() {
      Quantity++;
      _CurrentPrice = Quantity * int.parse(_SelectedTickets!.Price);
    });
  }

  @override
  Widget build(BuildContext context) {
    final eventObj = Event();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10),
              child: Text(
                "Choose Ticket Type",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.event.ticketTypes.length,
              itemBuilder: (context, index) {
                final ticket = widget.event.ticketTypes[index];

                return GestureDetector(
                  onTap: () {
                    _SelectedTicket(index, ticket);
                  },
                  child: TicketType(
                    ticket: ticket,
                    isSelected: _PassIndex == index,
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Quantity",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              DecreaseQuantinty();
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Ionicons.remove_outline,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                " ${Quantity}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              IncreaseQuantity();
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Ionicons.add_outline,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
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
                            "Total",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            ),
                          ),
                          Text(
                            "ETB ${_CurrentPrice}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                               BookingSummery(event:widget.event),
                            ),
                          );
                        },
                        child: Container(
                          width: 180,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF6C5CE7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
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
    );
  }
}
