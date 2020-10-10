import 'package:cls5navigation/welcome.dart';
import 'package:flutter/material.dart';
import 'package:cls5navigation/helper.dart';

class RegistraionScreen extends StatefulWidget {

  static const String id = 'registration_screen';

  @override
  _RegistraionScreenState createState() => _RegistraionScreenState();
}

class _RegistraionScreenState extends State<RegistraionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            Container(
              height: 150,
              child: Image.network('https://www.onlygfx.com/wp-content/uploads/2017/12/grunge-yes-no-icon-1.png'),
            ),
            SizedBox(height: 40.0,),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value)
              {
                // Do something with user input
              },
             decoration: TextFieldDecoration.copyWith(hintText: " Enter your User name"),


            ),

            SizedBox(height: 10.0,),
            TextField(
                textAlign: TextAlign.center,
                onChanged: (value)
                {
                  // Do something with user input
                },
                decoration: TextFieldDecoration.copyWith(hintText: " Enter your Email"),
            ),
            SizedBox(height: 10.0,),
            TextField(
              obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value)
                {
                  // Do something with user input
                },
                decoration: TextFieldDecoration.copyWith(hintText: " Enter your password")

            ),

            SizedBox(height: 20,),
            RoundedButton(
              title: "Register",
              colour: Colors.blueAccent,
              onPressed: (){

              },
            ),
            RoundedButton(
              title: "Back to home",
              colour: Colors.green,
              onPressed: (){
                Navigator.pushNamed(context,WelcomeScreen.id);
              },
            )

          ],

        ),
      ),

    );
  }
}
