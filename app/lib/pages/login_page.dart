import 'package:flutter/material.dart';
import 'package:app/widgets/google_sign_in_button.dart';
import 'package:app/widgets/white_text.dart';
import 'package:app/widgets/icons/icons.dart';
import 'package:app/widgets/background.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Background(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40.0),
              ),
              Center(
                child: GiftIcon(
                  height: 256,
                  width: 256,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
              ),
              Container(
                  child: Column(
                children: <Widget>[
                  WhiteText(
                    text: "Sign Up!",
                    size: 48,
                  ),
                  WhiteText(
                    text: "Magical world of wishlists",
                    size: 28,
                  ),
                ],
              )),
              new Expanded(
                child: new Align(
                  alignment: Alignment.center,
                  child: GoogleSignInButton(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
