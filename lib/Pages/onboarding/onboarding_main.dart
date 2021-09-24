import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:supabase_flutter/Pages/home_page.dart';
import 'package:supabase_flutter/Pages/onboarding/onboarding_pages.dart';

class OnboardingMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        done: Text('Done'),
        onDone: () {
          Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
        },
        pages: getPages(),
        showNextButton: false,
      ),
    );
  }
}
