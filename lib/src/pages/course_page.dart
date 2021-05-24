import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  CoursePage({Key key}) : super(key: key);

  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 2,
            maxCrossAxisExtent: 500,
          ),
          children: List.generate(
            12,
            (index) => Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadowColor: Colors.lightBlue,
              child: ListTile(
                title: Text("Flutter lesson ${index + 1}"),
                trailing: Icon(Icons.check),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
