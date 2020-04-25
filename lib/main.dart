

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:lpr/pages/inputLasra.dart';
import 'package:lpr/pages/login.dart';
import 'package:lpr/pages/selectPalliative.dart';
import 'package:lpr/pages/welcomePage.dart';

const MaterialColor lagosBlue = const MaterialColor(
  0xff00688C,
  const <int, Color>{
    50: const Color(0xff00688C),
    100: const Color(0xff00688C),
    200: const Color(0xff00688C),
    300: const Color(0xff00688C),
    400: const Color(0xff00688C),
    500: const Color(0xff00688C),
    600: const Color(0xff00688C),
    700: const Color(0xff00688C),
    800: const Color(0xff00688C),
    900: const Color(0xff00688C),
  },
);

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: lagosBlue,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: lagosBlue,
        fontFamily: "montserrat",
      ),
      title: "Lagos Palliative Registration",
      initialRoute: "/",
      routes: {
        '/': (context) => LoginScreen(),
        '/inputLasra': (context) => InputLasra(),
        '/inputLasra/welcome': (context) => WelcomePage(),
        '/inputLasra/welcome/selectPalliative': (context) => SelectPalliative(),
      },
    ),
  );
}
