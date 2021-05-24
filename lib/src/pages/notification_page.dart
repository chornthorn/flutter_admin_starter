import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SizedBox(
        width: double.infinity,
        child: ListView(children: <Widget>[
          Center(
              child: Text(
            'Students',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          DataTable(
            columns: [
              DataColumn(label: Text('RollNo')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Class')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Arya')),
                DataCell(Text('6')),
              ]),
              DataRow(cells: [
                DataCell(Text('12')),
                DataCell(Text('John')),
                DataCell(Text('9')),
              ]),
              DataRow(cells: [
                DataCell(Text('42')),
                DataCell(Text('Tony')),
                DataCell(Text('8')),
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
