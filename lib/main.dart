import 'package:flutter/material.dart';
import 'package:fsc_todo_app/home_page.dart';
import 'package:supabase/supabase.dart';

const supabaseUrl = 'https://duixoceusxyjdqwsyrqy.supabase.co';
const supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzMjIzNjI4NCwiZXhwIjoxOTQ3ODEyMjg0fQ.LxOmrV17XN4LB3YE1GqABaQioIpr_82-CsWnrAohrMM';
final supabaseClient = SupabaseClient(supabaseUrl, supabaseKey);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
