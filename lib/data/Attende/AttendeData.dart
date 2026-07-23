import "package:vibey/models/Attende/AttendeModel.dart";

class Event {
  final List<UpcomingEvent> upcomingEvent = [
    UpcomingEvent(
      Name: "Addis Music Festival",
      Date: "Jull 30",
      Time: "10:00 AM",
      Location: "Addis Ababa",
      Price: "200",
      Image: "assets/image/image.png",
    ),
    UpcomingEvent(
      Name: "Flutter Developer Meetup",
      Date: "May 21",
      Time: "3:00 AM",
      Location: "Addis Ababa",
      Price: "100",
      Image: "assets/image/logo.png",
    ),

    UpcomingEvent(
      Name: "Odoo Developer Meetup",
      Date: "Feb 3",
      Time: "5:00 AM",
      Location: "Addis Ababa",
      Price: "400",
      Image: "assets/image/First.png",
    ),
  ];

  final List<FeaturedEvent> featureEvents = [
    FeaturedEvent(
      Name: "Addis Festival",
      Type:"Featured",
      Date:"Jul 30",
      Location:"Addis Ababa",
      Image:"assets/image/image.png"
      ),
          FeaturedEvent(
      Name: "Odoo Developer",
      Type:"Featured",
      Date:"May 12",
      Location:"Mekele ",
      Image:"assets/image/image.png"
      ),
                FeaturedEvent(
      Name: "Tecno Mobile Event",
      Type:"Featured",
      Date:"Oct 12",
      Location:"Jimma ",
      Image:"assets/image/image.png"
      ),
  ];
}
