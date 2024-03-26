import 'package:flutter/material.dart';
import 'package:laba5/pages/kvadrat.dart';


class beskspisok extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Бесконечный список',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Бесконечный список'),
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return Text('Строка $index');
            }
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => kvadrat()),
            );
          },
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}