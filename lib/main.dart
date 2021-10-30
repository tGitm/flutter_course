import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IdCard(),
  )
  );
}

class IdCard extends StatefulWidget {
  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int programmingLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('My ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],      
        elevation: 0.0,   //odstranim drop shadow od appBara
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (programmingLevel < 10) {
            setState(() {
              programmingLevel++;
            });
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[600],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/tim.jpg'),
                radius: 35.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[600],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.8,
              ),
            ),
            SizedBox(height: 10.0,),  //adding space between widgets
            Text(
              'Tim Rus',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1.8,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'CURRENT PROGRAMMING LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.8,
              ),
            ),
            SizedBox(height: 10.0,),  //adding space between widgets
            Text(
              '$programmingLevel/10',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1.8,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),  //adding space in width between icon and text
                Text(
                  'timrus.dev@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),  
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

