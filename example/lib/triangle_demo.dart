import 'package:flutter/material.dart';
import 'package:clippy_flutter/triangle.dart';

class TriangleDemo extends StatelessWidget {
  final courses = [
    Course('assets/math.png', 'Math'),
    Course('assets/physics.png', 'Physics'),
    Course('assets/biology.png', 'Biology'),
    Course('assets/programming.png', 'Programming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learn')),
      body: GridView(
        padding: const EdgeInsets.all(16.0),
        children: courses
            .map(
              (Course course) => Triangle.isosceles(
                    edge: Edge.TOP,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset(
                          course.image,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                            left: 0.0,
                            right: 0.0,
                            bottom: 0.0,
                            child: Container(
                              color: Colors.pink,
                              child: Text(
                                course.title,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                  ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 16.0, mainAxisSpacing: 16.0),
      ),
    );
  }
}

class Course {
  Course(this.image, this.title);

  final String image;
  final String title;
}
