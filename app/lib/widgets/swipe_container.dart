import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() => runApp(SwipeContainer());

class SwipeContainer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidable Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final items = new List<CategoryItem>();
  @override
  Widget build(BuildContext context) {
    items.add(new CategoryItem("Christmas Wishlist", ""));
    items.add(new CategoryItem("Birthday Wishlist", ""));
    items.add(new CategoryItem("Wedding Wishlist", ""));
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Slidable(
            key: Key(item.categoryText),
            actionPane: SlidableDrawerActionPane(),
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
              ),
            ],
            dismissal: SlidableDismissal(
              child: SlidableDrawerDismissal(),
            ),
            child: ListTile(
              leading: new Image(
                image: AssetImage(''),
                height: 25,
              ),
              title: new Row(
                children: <Widget>[
                  new Expanded(child: new Text(item.categoryText))
                ],
              ),
            ),
          );
        },
      );
  }
}

class CategoryItem {
  String categoryText;
  String imagePath;
  CategoryItem(this.categoryText, this.imagePath);
}
