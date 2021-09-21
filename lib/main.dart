import 'package:flutter/material.dart';
import 'package:fsc_todo_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // fontFamily: 'QuickSand',
          // accentColor: Color(0xff283748),
          ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        // "/": (context) => SplashScreen(),
        // "/onboard": (context) => OnboardingMain(),
        "/home": (context) => HomePage(),
      },
      // home: SplashScreen(),
    );
  }
}
