import 'package:flutter/material.dart';

class Background extends StatelessWidget{
  final Widget child;

  Background({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.child,
          decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: [Color(0xffFE578D), Color(0xffF56F63)],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
                stops: [0.0,1.0],
                tileMode: TileMode.clamp
            ),
          ),
        );
  }
}