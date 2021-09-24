import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

List<PageViewModel> getPages() {
  return [
    PageViewModel(
      image: Image.network('https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8.png'),
      title: 'Welcome to my TODO App',
      body: 'Made for FSC Summer Camp',
      footer: Text("Flutter"),
    ),
    PageViewModel(
      image: Image.network('https://flutter.dev/assets/images/dash/Dashatars.png'),
      title: 'Online Todo App',
      body: 'with Supabase',
      // footer: Text("Footer"),
    ),
  ];
}
