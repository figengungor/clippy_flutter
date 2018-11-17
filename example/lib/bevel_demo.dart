import 'package:clippy_flutter/bevel.dart';
import 'package:flutter/material.dart';

class BevelDemo extends StatelessWidget {
  static const List<Category> categories = [
    Category(Icons.directions_run, Colors.pink, 'Sports'),
    Category(Icons.music_note, Colors.blue, 'Music'),
    Category(Icons.edit, Colors.green, 'Poetry'),
    Category(Icons.map, Colors.orange, 'Travel'),
    Category(Icons.add, Colors.cyanAccent, 'Math'),
    Category(Icons.photo_camera, Colors.indigoAccent, 'Photography'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bevel')),
      body: GridView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          Category category = categories[index];
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Bevel(
              cutLength: 30.0,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(category.iconData),
                    SizedBox(height: 8.0),
                    Text(
                      category.title,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                color: category.color,
              ),
            ),
          );
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}

class Category {
  final IconData iconData;
  final Color color;
  final String title;

  const Category(this.iconData, this.color, this.title);
}
