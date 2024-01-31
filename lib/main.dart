import 'package:flutter/material.dart';
import 'package:new_task/bonus_screen.dart';
import 'package:new_task/game_home.dart';
import 'package:new_task/game_screen.dart';
import 'package:new_task/help_screen.dart';
import 'package:new_task/play.dart';
import 'package:new_task/premium_screen.dart';
import 'package:new_task/task_line_screen.dart';
import 'package:new_task/widgets/popup.dart';
import 'package:new_task/widgets/time_remaining_widget.dart';

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
        // textTheme: const TextTheme(
        //   // Customize font for various text styles
        //   headlineLarge: TextStyle(
        //     fontFamily: 'MyCustomFont',
        //     fontSize: 30.0,
        //     fontWeight: FontWeight.w800,
        //     color: Colors.white,
        //   ),
        //   bodyMedium: TextStyle(
        //     fontFamily: 'MyCustomFont',
        //     fontSize: 16,
        //     color: Colors.black,
        //   ),
        // ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 98, 42, 71),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.green,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      routes: {
        "/": (context) => const GameHome(),
        "/play": (context) => const PlayScreen(),
        "/taskline": (context) => const TaskLineScreen(),
        "/bonus": (context) => const BounsScreen(),
        "/game": (context) => const GameScreen(),
        "/premium": (context) => const PremiumScreen(),
        "/help": (context) => const HelpScreen(),
        "/time": (context) => const TimeRemainingWidget(),
        "/win": (context) => const PopUp(),
      },
    );
  }
}
