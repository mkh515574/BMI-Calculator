import 'package:bmi_calculator/home_view.dart';
import 'package:bmi_calculator/slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

       
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xff0A0E21),
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 35
              )
        ),
        scaffoldBackgroundColor: Color(0xff0A0E21),

        primaryColor: Color(0xff1A1F38),

        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),);
  }
}


