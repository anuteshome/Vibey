import "package:vibey/models/Attende/AttendeModel.dart";
import "package:flutter/material.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class Event {
  final List<EventModel> events = [
    EventModel(
      Name: "Addis Music Festival",
      ticketTypes :[
    TicketTypes(
      Type: "Early Bird",
      Discription:
          "product flow. After that, irst complete  integrating Supabase",
      Price: "800",
    ),
    TicketTypes(
      Type: "Standard",
      Discription: "complete product flow. After that, integrating Supabase",
      Price: "1200",
    ),
    TicketTypes(
      Type: "Vip",
      Discription:
          "irst complete product flow. After that, integrating Supabase",
      Price: "2000",
    ),

      ],
      Date: "Jull 30",
      Time: "10:00 AM",
      Type: "Featured",
      Location: "Addis Ababas",
      Price: "200",
      Image: "assets/image/image.png",
      Rate: "3.5",
      Review: "330",
      Discription:
          "s directly toward the core creens, and builds purpose of Vibey:It introduces navigation, passing data between  finding an event",
      Organizer: "Donkey Tube",
      About:
          " ait as the project grows But don't  nd you'll naturally refactor  worry about that now. It works,.",
      Catagory: "Art",
      isFeatured: false,
      isUpcoming: true,
    ),
    EventModel(
      Name: "Flutter Developer Meet",
       ticketTypes :[

    TicketTypes(
      Type: "Early Bird",
      Discription:
          "product flow. After that, irst complete  integrating Supabase",
      Price: "800",
    ),
    TicketTypes(
      Type: "Standard",
      Discription: "complete product flow. After that, integrating Supabase",
      Price: "1200",
    ),
    TicketTypes(
      Type: "Vip",
      Discription:
          "irst complete product flow. After that, integrating Supabase",
      Price: "3000",
    ),


      ],
      Date: "May 21",
      Time: "3:00 AM",
      Type: "Featured",
      Location: "Addis Ababa",
      Price: "100",
      Image: "assets/image/image.png",
      Rate: "4.7",
      Review: "230",
      Discription:
          "It introduces navigation, passing data between screens, and builds directly toward the core purpose of Vibey: finding an event",
      Organizer: "Kana Warehouse",
      About:
          "But don't worry about that now. It works, and you'll naturally refactor it as the project grows.",
      Catagory: "Music",
      isFeatured: false,
      isUpcoming: true,
    ),

    EventModel(
      Name: "Odoo Developer Meetup",
       ticketTypes :[
         TicketTypes(
      Type: "Early Bird",
      Discription:
          "product flow. After that, irst complete  integrating Supabase",
      Price: "100",
    ),
         TicketTypes(
      Type: "Standard",
      Discription: "complete product flow. After that, integrating Supabase",
      Price: "3200",
    ),

    TicketTypes(
      Type: "Vip",
      Discription:
          "irst complete product flow. After that, integrating Supabase",
      Price: "5000",
    ),

   
   
      ],
      Date: "Feb 3",
      Time: "5:00 AM",
      Location: "Addis Ababa",
      Price: "400",
      Type: "Featured",
      Image: "assets/image/image.png",
      Rate: "3.5",
      Review: "430",
      Discription:
          "screens, and builds directly toward the core purpose of Vibey:It introduces navigation, passing data between  finding an event",
      Organizer: "Venu Warehouse",
      About:
          " and you'll naturally refactor it as the project grows But don't worry about that now. It works,.",
      Catagory: "Tech",
      isFeatured: true,
      isUpcoming: false,
    ),
    EventModel(
      Name: "Addis Festival",
       ticketTypes :[
   TicketTypes(
      Type: "Early Bird",
      Discription:
          "product flow. After that, irst complete  integrating Supabase",
      Price: "600",
    ),

    TicketTypes(
      Type: "Standard",
      Discription: "complete product flow. After that, integrating Supabase",
      Price: "4000",
    ),
 TicketTypes(
      Type: "Vip",
      Discription:
          "irst complete product flow. After that, integrating Supabase",
      Price: "8000",
    ),
    
      ],
      Type: "Featured",
      Date: "Jul 30",
      Price: "400",
      Time: "5:00 AM",
      Location: "Addis Ababa",
      Image: "assets/image/image.png",
      Rate: "3.5",
      Review: "230",
      Discription:
          "s toward the core purpose of creens, and builds directly Vibey:It introduces navigation, passing data between  finding an event",
      Organizer: "Minliuem Hall",
      About:
          "  project grows But don't worry about and you'll naturally refactor it as the that now. It works,.",
      Catagory: "Jazz",
      isFeatured: true,
      isUpcoming: false,
    ),

    EventModel(
      Name: "Odoo Developer Meetup",
       ticketTypes :[
    TicketTypes(
      Type: "Early Bird",
      Discription:
          "product flow. After that, irst complete  integrating Supabase",
      Price: "400",
    ),
    TicketTypes(
      Type: "Standard",
      Discription: "complete product flow. After that, integrating Supabase",
      Price: "1000",
    ),
     TicketTypes(
      Type: "Vip",
      Discription:
          "irst complete product flow. After that, integrating Supabase",
      Price: "2500",
    ),
      ],
      Date: "Feb 3",
      Type: "Featured",
      Time: "5:00 AM",
      Location: "Addis Ababa",
      Price: "400",
      Image: "assets/image/image.png",
      Rate: "3.5",
      Review: "230",
      Discription:
          "s toward the core purpose of creens, and builds directly Vibey:It introduces navigation, passing data between  finding an event",
      Organizer: "Minliuem Hall",
      About:
          "  project grows But don't worry about and you'll naturally refactor it as the that now. It works,.",
      Catagory: "Jazz",
      isFeatured: true,
      isUpcoming: false,
    ),

    EventModel(
      Name: "Nest Developer Meetup",
       ticketTypes :[
    TicketTypes(
      Type: "Early Bird",
      Discription:
          "product flow. After that, irst complete  integrating Supabase",
      Price: "200",
    ),

    TicketTypes(
      Type: "Standard",
      Discription: "complete product flow. After that, integrating Supabase",
      Price: "700",
    ),

        TicketTypes(
      Type: "Vip",
      Discription:
          "irst complete product flow. After that, integrating Supabase",
      Price: "900",
    ),
      ],
      Date: "Feb 3",
      Time: "5:00 AM",
      Location: "Addis Ababa",
      Price: "400",
      Type: "Featured",
      Image: "assets/image/image.png",
      Rate: "3.5",
      Review: "430",
      Discription:
          "screens, and builds directly toward the core purpose of Vibey:It introduces navigation, passing data between  finding an event",
      Organizer: "Venu Warehouse",
      About:
          " and you'll naturally refactor it as the project grows But don't worry about that now. It works,.",
      Catagory: "Tech",
      isFeatured: false,
      isUpcoming: true,
    ),
  ];

  final List<Catagorie> catagories = [
    Catagorie(
      Name: "Music",
      icon: Ionicons.musical_notes_outline,
      color: Colors.white,
    ),
    Catagorie(Name: "Tech", icon: Ionicons.laptop_outline, color: Colors.white),
    Catagorie(
      Name: "Art",
      icon: Ionicons.color_palette_outline,
      color: Colors.white,
    ),
    Catagorie(
      Name: "Gaming",
      icon: Ionicons.game_controller_outline,
      color: Colors.white,
    ),
  ];

  // final List<TicketTypes> ticketTypes = [
  //   TicketTypes(
  //     Type: "Vip",
  //     Discription:
  //         "irst complete product flow. After that, integrating Supabase",
  //     Price: "2000",
  //   ),

  //   TicketTypes(
  //     Type: "Standard",
  //     Discription: "complete product flow. After that, integrating Supabase",
  //     Price: "1200",
  //   ),

  //   TicketTypes(
  //     Type: "Early Bird",
  //     Discription:
  //         "product flow. After that, irst complete  integrating Supabase",
  //     Price: "800",
  //   ),
  // ];
}
