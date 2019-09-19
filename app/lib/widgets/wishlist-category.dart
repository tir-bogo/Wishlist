import 'package:flutter/material.dart';
import 'package:app/widgets/icons/icons.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(WishlistCategory());

class WishlistCategory extends StatefulWidget {
  final String categoryText;
  final String imagePath;

  WishlistCategory({this.categoryText, this.imagePath});
  var wishlistCategoryState = new _WishlistCategoryState();
  @override
  _WishlistCategoryState createState() => wishlistCategoryState;
  void showIcon() {
    wishlistCategoryState.showIcon();
  }
  }


class _WishlistCategoryState extends State<WishlistCategory> {
  bool _visible = false;

  void showIcon() {
    setState(() {
     _visible = !_visible;
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 1.0),
        color: Colors.pink,
        child: Row(
          children: <Widget>[
            Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    widget.categoryText,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
            Image(
              image: AssetImage(widget.imagePath),
              height: 50.0,
            ),
            Visibility(
              visible: _visible,
              child: IconButton(padding: const EdgeInsets.only(left: 150),
              iconSize: 25, icon: Image(image: AssetImage("assets/delete-cross.png"),),
              onPressed: () {

              },)
              
            )
          ],
        ),
      );
  }
}