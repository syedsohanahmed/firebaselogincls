import 'package:flutter/material.dart';
import 'package:cls5navigation/helper.dart';
import 'package:cls5navigation/auth_helper.dart';
import 'package:cls5navigation/login.dart';
import 'package:cls5navigation/Homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(

      stream: FirebaseAuth.instance.authStateChanges(),
      builder:(context, snapshot) {
        if(snapshot.hasData && snapshot.data != null){
          return HomePage();
        }
        return LoginScreen();
      }
    );




  }
}







