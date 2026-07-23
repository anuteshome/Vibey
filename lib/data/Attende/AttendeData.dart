import "package:vibey/models/Attende/AttendeModel.dart";
import "package:flutter/material.dart";

class Event {
  final List<EventModel> event = [
    EventModel(
      Name: "Addis Music Festival",
      Date: "Jull 30",
      Time: "10:00 AM",
      Type: "Featured",
      Location: "Addis Ababa",
      Price: "200",
      Image: "assets/image/image.png",
       Rate: "3.5",
      Review: "330",
      Discription: "s directly toward the core creens, and builds purpose of Vibey:It introduces navigation, passing data between  finding an event",
      Organizer: "Donkey Tube",
      About:" ait as the project grows But don't  nd you'll naturally refactor  worry about that now. It works,.",
      Catagory: "Art"
    ),
    EventModel(
      Name: "Flutter Developer Meet",
      Date: "May 21",
      Time: "3:00 AM",
      Type: "Featured",
      Location: "Addis Ababa",
      Price: "100",
      Image: "assets/image/image.png",
      Rate: "4.7",
      Review: "230",
      Discription: "It introduces navigation, passing data between screens, and builds directly toward the core purpose of Vibey: finding an event",
      Organizer: "Kana Warehouse",
      About:"But don't worry about that now. It works, and you'll naturally refactor it as the project grows.",
      Catagory: "Music"
    ),

    EventModel(
      Name: "Odoo Developer Meetup",
      Date: "Feb 3",
      Time: "5:00 AM",
      Location: "Addis Ababa",
      Price: "400",
      Type: "Featured",
      Image: "assets/image/image.png",
      Rate: "3.5",
      Review: "430",
      Discription: "screens, and builds directly toward the core purpose of Vibey:It introduces navigation, passing data between  finding an event",
      Organizer: "Venu Warehouse",
      About:" and you'll naturally refactor it as the project grows But don't worry about that now. It works,.",
      Catagory: "Tech"
    ),
  ];

  // final List<FeaturedEvent> featureEvents = [
  //   FeaturedEvent(
  //     Name: "Addis Festival",
  //     Type: "Featured",
  //     Date: "Jul 30",
  //     Location: "Addis Ababa",
  //     Image: "assets/image/image.png",
  //     Rate: 3.5,
  //     Review: "230",
  //     Discription: "s toward the core purpose of creens, and builds directly Vibey:It introduces navigation, passing data between  finding an event",
  //     Organizer: "Minliuem Hall",
  //     About:"  project grows But don't worry about and you'll naturally refactor it as the that now. It works,.",
  //     Catagory: "Jazz"
  //   ),
  //   FeaturedEvent(
  //     Name: "Odoo Developer",
  //     Type: "Featured",
  //     Date: "May 12",
  //     Location: "Mekele ",
  //     Image: "assets/image/image.png",
  //      Rate: 4.5,
  //     Review: "130",
  //     Discription: "builds directly Vibey:It introduces navigation, s toward the core purpose of creens, and passing data between  finding an event",
  //     Organizer: "Stadium ",
  //     About:"  about and you'll naturally refactor project grows But don't worry  it as the that now. It works,.",
  //     Catagory: "Football"
  //   ),
  //   FeaturedEvent(
  //     Name: "Tecno Mobile Event",
  //     Type: "Featured",
  //     Date: "Oct 12",
  //     Location: "Jimma ",
  //     Image: "assets/image/image.png",
  //     Rate: 3.2,
  //     Review: "30",
  //     Discription: "Vibey builds directly It introduces navigation, s toward the core purpose of creens, and passing data between  finding an event",
  //     Organizer: "Capstone ",
  //     About:" naturally refactor  about and you'll  project grows But don't worry  it as the that now. It works,.",
  //     Catagory: "Tech"
  //   ),
  // ];

  final List<Catagorie> catagories = [
    Catagorie(Name: "Music", icon: Icons.lock, color: Color.fromARGB(255, 186, 184, 201)),
    Catagorie(Name: "Tech", icon: Icons.person, color:Color.fromARGB(255, 208, 222, 183)),
    Catagorie(Name: "Art", icon: Icons.search, color: Color.fromARGB(255, 219, 190, 190)),
     Catagorie(Name: "Coffee", icon: Icons.coffee, color: Color.fromARGB(255, 194, 195, 171)),
  ];
}
