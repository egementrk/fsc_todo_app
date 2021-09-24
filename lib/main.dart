import 'package:flutter/material.dart';
import 'package:supabase_flutter/Pages/home_page.dart';
import 'package:supabase_flutter/Pages/onboarding/onboarding_main.dart';
import 'package:supabase_flutter/Pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.black,
        primaryColorLight: Colors.black38,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashPage(),
        "/onboard": (context) => OnboardingMain(),
        "/home": (context) => HomePage(),
      },
      // home: HomePage(),
    );
  }
}
