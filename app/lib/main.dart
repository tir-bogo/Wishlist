import 'package:app/widgets/swipe_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'widgets/wishlist-category.dart';

void main() {
  runApp(MyApp());
}

// MyApp is a StatefulWidget. This allows updating the state of the
// widget when an item is removed.
class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  final newItems = List<WishlistCategory>();

  @override
  Widget build(BuildContext context) {
    final title = 'CategoryList';
    newItems.add(new WishlistCategory(categoryText: 'Christmas wishes', imagePath: ''));
    newItems.add(new WishlistCategory(categoryText: 'Birthday wishes', imagePath: ''));
    newItems.add(new WishlistCategory(categoryText: 'Wedding wishes', imagePath: ''));
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SwipeContainer()
      ),
    );
  }
}