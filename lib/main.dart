import 'package:flutter/material.dart';
import 'package:ukl_tedii/view/boking_view.dart';
import 'package:ukl_tedii/view/cinema_view.dart';
import 'package:ukl_tedii/view/home_view.dart';
import 'package:ukl_tedii/view/login_view.dart';
import 'package:ukl_tedii/view/movie_view.dart';
import 'package:ukl_tedii/widget/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: "/",
        routes: {
          '/': (context) => SplashScreen(),
          '/#': (context) => LoginView(),
          '/home': (context) => HomeView(),
          '/boking': (context) => BokingView(),
          '/movie': (context) => MovieView(),
          '/cinema': (context) => CinemaView(),
        });
  }
}
