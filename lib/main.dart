import 'package:flutter/material.dart';
import 'package:vibey/feature/auth/presentation/screen/splash_screen.dart';
import "package:supabase_flutter/supabase_flutter.dart";


void main() async{
WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
   url:'https://crzywgmtkkxzkkbeqxan.supabase.co',
   anonKey: 'sb_publishable_BheiLctkyMgyaYpgYxl3Wg_JIvknRmk',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
