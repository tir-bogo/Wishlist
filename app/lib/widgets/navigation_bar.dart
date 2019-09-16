import 'package:flutter/material.dart';
import 'package:app/widgets/icons/icons.dart';
import 'package:app/widgets/line.dart';

class NavigationBar extends StatelessWidget {
  final Function userButtonPressed;
  final Function swipeButtonPressed;
  final Function settingsButtonPressed;

  NavigationBar(
      {@required this.userButtonPressed,
      this.swipeButtonPressed,
      this.settingsButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 5),
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  onPressed: this.userButtonPressed,
                  child: Icon(Icons.person, size: 36.0, color: Colors.white),
                ),
                FlatButton(
                  onPressed: this.swipeButtonPressed,
                  child: GiftSwipeIcon(
                    height: 44.0,
                    width: 88.0,
                  ),
                ),
                FlatButton(
                  onPressed: this.settingsButtonPressed,
                  child: Icon(Icons.settings, size: 36.0, color: Colors.white),
                ),
              ],
            )),
          ),
          Line()
        ],
      ),
    );
  }
}