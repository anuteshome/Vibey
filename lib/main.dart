import 'package:flutter/material.dart';
import 'package:vibey/feature/auth/presentation/screen/splash_screen.dart';
import "package:supabase_flutter/supabase_flutter.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/data/Attende/AttendeData.dart";
import "package:vibey/data/Attende/book.repository.dart";
import "package:vibey/models/Attende/BookingModel.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://crzywgmtkkxzkkbeqxan.supabase.co',
    publishableKey: 'sb_publishable_BheiLctkyMgyaYpgYxl3Wg_JIvknRmk',
  );

  final initialEvent = Event().events.first;
  final loadedBooks = await BookRepsoitory().getBooks();

  if (loadedBooks.isEmpty) {
    runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text('No bookings found')),
      ),
    ));
    return;
  }

  final initialBooking = loadedBooks.first;
  runApp(MyApp(event: initialEvent, book: initialBooking));
}

class MyApp extends StatelessWidget {
  final EventModel event;
  final BookingModel book;

  const MyApp({
    super.key,
    required this.event,
    required this.book,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(event: event, book: book),
    );
  }
}
