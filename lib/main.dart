import 'package:flutter/material.dart';
import 'package:flutter_coding_challenge/screen/login/login.dart';
import 'package:flutter_coding_challenge/screen/otp/otp.dart';
import 'package:flutter_coding_challenge/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter codding challenge',
        theme: ThemeData(
            fontFamily: "myfont",
            useMaterial3: true,
            primaryColor: Constants.primcolor,
            scaffoldBackgroundColor: Colors.white,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: const EdgeInsets.all(18),
                    backgroundColor: Constants.primcolor))),
        home: Login());
  }
}
