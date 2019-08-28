import 'package:flutter/material.dart';

class GiftIcon extends StatelessWidget {
  final double height;
  final double width;

  GiftIcon({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/gift_icon.png"),
      height: this.height,
      width: this.width,
    );
  }
}