import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              appBar: AppBar(
              title: Text('First App'),
              centerTitle: true,
              backgroundColor: Colors.red[600],
            ),
            body: Center(
             child: Image(
               image: AssetImage('assets/space-1.jpg'),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {  },
              child: Text('click'),
              backgroundColor: Colors.red[600],
            ),
    );
  }
}
