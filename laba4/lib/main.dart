import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DormitoryPage(),
    );
  }
}

class DormitoryPage extends StatefulWidget {
  @override
  _DormitoryPageState createState() => _DormitoryPageState();
}

class _DormitoryPageState extends State<DormitoryPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Общежития КубГАУ"),
          backgroundColor: Colors.green
        ),
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [])
    )
    );
  }
}