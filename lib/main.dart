import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('First App'),
      centerTitle: true,
      backgroundColor: Colors.red[600],
),
  body: Center(
    child: Text(
      'Hello user!',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
        color: Colors.grey[600],
        fontFamily: 'SansPro',
      ),
    ),
  ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      child: Text('CLICK'),
      backgroundColor: Colors.red[600],
    ),
  ),
));