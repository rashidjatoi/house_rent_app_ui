import 'package:flutter/material.dart';
import 'package:house_rent/views/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: const Color(0xFFF5F5F5),
          primaryColor: const Color(0xFF811883),
          textTheme: const TextTheme(
            headline1: TextStyle(
              color: Color(0xFF100E34),
            ),
            bodyText1: TextStyle(
              color: Color(0xFF100E34),
            ),
          )),
      home: const HomePage(),
    );
  }
}
