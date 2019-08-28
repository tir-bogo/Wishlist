import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  final String text;
  final double size;

  WhiteText({this.text, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        color: Colors.white,
        fontSize: this.size,
        fontFamily: "Roboto",
      ),
    );
  }
}
