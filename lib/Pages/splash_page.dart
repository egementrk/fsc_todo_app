import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/Pages/home_page.dart';
import 'package:supabase_flutter/Pages/onboarding/onboarding_main.dart';
import 'package:supabase_flutter/components/context_extension.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/onboard');
      // pushReplacement(MaterialPageRoute(builder: (_) => OnboardingMain()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: context.paddingLow,
              child: Image.asset(
                'assets/flutter.png',
                height: context.heightHigh,
              ),
            ),
            SizedBox(
              height: context.heightMedium,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
