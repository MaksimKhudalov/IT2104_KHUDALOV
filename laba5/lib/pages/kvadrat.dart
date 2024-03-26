import 'package:flutter/material.dart';
import 'dart:math';

import 'package:laba5/main.dart';


class kvadrat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Возведение в квадрат',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Возведение в квадрат'),
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
              if (index.isOdd) {
                return Divider();
              } else {
                int nechet = index ~/ 2;
                return Text('2 ^ $nechet = ${pow(2, nechet)}');
              }
            }
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}