import 'package:flutter/material.dart';
import 'package:app/widgets/navigation_bar.dart';
import 'package:app/widgets/background.dart';
import 'package:app/widgets/white_text.dart';
import 'package:app/core/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dropdownvalue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
        home: Scaffold(
      body: Background(
          child: Column(
        children: <Widget>[
          Container(
            child: NavigationBar(
              userButtonPressed: null,
              swipeButtonPressed: null,
              settingsButtonPressed: null,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 55, bottom: 5.0, right: 55.0, top: 5.0),
            child: WhiteText(
              size: 32,
              text: "Choose which list to add to",
              bold: true,
              center: true,
            ),
          ),
          Container(
            child: DropdownButton<String>(
              icon: Icon(Icons.arrow_downward),
              value: dropdownvalue,
              
              items: <String>['Christmas wishlist', 'Wedding wishlist'].map((
                String value,
              ) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: WhiteText(text: value,size: 24, center: false,bold: true,),
                );
              }).toList(),
              onChanged: (String newValue) {
          setState(() {
            dropdownvalue = newValue;
          });
        },
            ),
          ),
        ],
      )),

      floatingActionButton: FloatingActionButton.extended(
        label: WhiteText(
          text: "Log out",
          size: 33,
          bold: true,
          center: true,
        ),
        onPressed: (
        ) {var auth = AuthService();
        auth.signOut();},
        backgroundColor: Colors.white54,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ));
  }
}
