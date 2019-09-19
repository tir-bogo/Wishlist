import 'package:app/widgets/background.dart';
import 'package:app/widgets/navigation_bar.dart';
import 'package:app/widgets/white_text.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Function swipeLeftPressed;
  final Function swipeRightPressed;

  MyApp({this.swipeLeftPressed, this.swipeRightPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Background(
          child: new Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                child: NavigationBar(
                  userButtonPressed: null,
                  swipeButtonPressed: null,
                  settingsButtonPressed: null,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 15,top: 3),
                child: Image.network(
                  'https://zdnet3.cbsistatic.com/hub/i/r/2016/11/21/fd5b0448-c08a-423c-88fd-78eca6bed603/thumbnail/770x433/5a5c11a7051bce9d1a17c8ec516af039/mpb-15-2016-header.jpg',
                  //height: MediaQuery.of(context).size.height / 1.2,
                  //height: 500,
                ),
              ),
              Container(
                height: 200,
                child: WhiteText(
                  text:
                      "dsjhd jsdjh sdjhs djhsjkdh sjhd sjd s dshjd sadh sda dasjhdjkhsdahsjd dj hdsjdjshjdh shd jdasjh dsajhd ajdha djahd akjhd jdkjh dasd",
                  size: 20,
                  bold: false,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 60, left: 30, right: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          onPressed: this.swipeLeftPressed,
                          child: Icon(
                            Icons.thumb_down,
                            size: 70,
                            color: Colors.white,
                          ),
                        ),
                        FlatButton(
                          onPressed: this.swipeRightPressed,
                          child: Icon(
                            Icons.thumb_up,
                            size: 70,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
