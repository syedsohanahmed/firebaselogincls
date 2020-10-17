import 'package:cls5navigation/auth_helper.dart';
import 'package:cls5navigation/helper.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Image.network(
                "https://image.freepik.com/free-vector/welcome-homepage-with-gradient-landscape_52683-20592.jpg"),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Image.network(
                "https://firebasestorage.googleapis.com/v0/b/fir-cls-be73b.appspot.com/o/coming-soon-logo.png?alt=media&token=6e7cf4e7-5a4c-4082-b815-7ac69587f935"),
            SizedBox(
              height: 20.0,
            ),
            RoundedButton(
              title: "Log Out",
              colour: Colors.blue,
              onPressed: () {
                AuthHelper.logOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
