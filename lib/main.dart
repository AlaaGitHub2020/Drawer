import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Simple Example who to use Drawer',
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Drawer using Example',
          style: TextStyle(
            fontSize: 22.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'DrawerHeader',
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
            ),
            ListTile(
              title: Text(
                'Item1',
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Item2',
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            'The body is here',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.deepOrange,
            ),
          ),
        ),
      ),
    );
  }
}
