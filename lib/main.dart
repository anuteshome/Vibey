import 'package:flutter/material.dart';
import 'package:vibey/feature/auth/presentation/screen/splash_screen.dart';
import "package:supabase_flutter/supabase_flutter.dart";
import "package:vibey/models/Attende/AttendeModel.dart";
import "package:vibey/data/Attende/AttendeData.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://crzywgmtkkxzkkbeqxan.supabase.co',
    anonKey: 'sb_publishable_BheiLctkyMgyaYpgYxl3Wg_JIvknRmk',
  );
  final initailEvent = Event().events.first;
  runApp(const MyApp(event:initailEvent));
}

class MyApp extends StatelessWidget {
  final EventModel event;
  const MyApp({super.key,required this.event});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(event:event),
    );
  }
}
