import 'package:cls5navigation/login.dart';
import 'package:cls5navigation/registration.dart';
import 'package:cls5navigation/welcome.dart';
import 'package:flutter/material.dart';
import 'package:cls5navigation/helper.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
       routes: {
         WelcomeScreen.id: (context) => WelcomeScreen(),
         LoginScreen.id: (context) => LoginScreen(),
         RegistraionScreen.id: (context) => RegistraionScreen(),
       },


    );
  }
}
