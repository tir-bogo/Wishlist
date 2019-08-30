

import 'package:flutter/material.dart';

class AssetsImage extends StatelessWidget {
  final double height;
  final double width;
  final String path;

  AssetsImage({@required this.path, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: ExactAssetImage(path),fit: BoxFit.fill)),
      //child: Image.asset(path),
      height: this.height,
      width: this.width,
      
    );

  }
}

class GiftIcon extends AssetsImage{
  GiftIcon({height, width}): super(path: "assets/gift_icon.png", height: height, width: width);
}

class GiftSwipeIcon extends AssetsImage{
  GiftSwipeIcon({height, width}): super(path: "assets/gift_swipe_icon.png", height: height, width: width);
}
