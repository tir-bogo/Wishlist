import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  final String text;
  final double size;
  final bool bold;
  final TextAlign textAlign;

  WhiteText({this.text, this.size, this.bold, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        color: Colors.white,
        fontSize: this.size,
        fontFamily: "Roboto",
        fontWeight: this.bold ? FontWeight.bold : FontWeight.normal,
      ),
      textAlign: this.textAlign,
    );
  }
}
