import "package:flutter/material.dart";
import "package:vibey/core/widgets/Catagories.dart";
import "package:vibey/core/widgets/FeaturedEvents.dart";
import "package:vibey/core/widgets/UpcomingEvents.dart";
import "package:vibey/feature/attendee/EventDetail.dart";
import "package:vibey/feature/auth/data/repository/auth_repository.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:vibey/feature/auth/presentation/screen/login_screen.dart";
import "package:vibey/data/Attende/AttendeData.dart";
import "package:ionicons_plus/ionicons_plus.dart";

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final authRepsitory = AuthRepository(Supabase.instance.client);
  final eventObj = Event();

  void Logout(BuildContext context) async {
    await authRepsitory.logout();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final featuredEvent = eventObj.events
        .where((event) => event.isFeatured)
        .toList();
    final upcomingEvent = eventObj.events.where((e) => e.isUpcoming).toList();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 226, 246),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 50,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Vibey",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF6C5CE7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Ionicons.notifications_outline, size: 30),
                        SizedBox(width: 20),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            // color: Colors.grey,
                            border: Border.all(color: Colors.black),
                            image: DecorationImage(
                              image: AssetImage("assets/image/profile.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Hero
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Ananya 👋",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        "Discover Events That inspire You",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Search
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  // width:double.infinity,
                  // height:60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 6,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.all(12),
                        hintText: "Search events, artists or places...",
                      ),
                    ),
                  ),
                ),
              ),
              // Catagoies
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Catagoies",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all >",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6C5CE7),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: eventObj.catagories.length,
                  itemBuilder: (context, index) {
                    return Catagories(cata: eventObj.catagories[index]);
                  },
                ),
              ),
              //Featured Section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Featured Event",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredEvent.length,
                  itemBuilder: (context, index) {
                    final event = featuredEvent[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EventDetail(event: event),
                          ),
                        );
                      },
                      child: FeatureEvents(event: event),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 15,
                  bottom: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Events",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all >",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6C5CE7),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  // color:Colors.grey
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: upcomingEvent.length,
                  itemBuilder: (context, index) {
                    final event = upcomingEvent[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EventDetail(event: event),
                          ),
                        );
                      },
                      child: UpcomingEvents(event: event),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
