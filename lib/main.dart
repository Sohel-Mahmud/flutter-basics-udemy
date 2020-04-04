import 'package:flutter/material.dart';
import 'package:mi_card/dice_page.dart';
import 'package:mi_card/quizzler_page.dart';
import 'package:mi_card/xylophone_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new FirstSreen(),
    );
  }
}

class FirstSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
//            mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/sohel.jpg'),
              backgroundColor: Colors.red,
            ),
            Text(
              'Sohel Mahmud',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source',
                fontSize: 15.0,
                color: Colors.teal[100],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 19.0,
                    ),
                    Text(
                      '+880 20203434',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source',
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text(
                  'sohel@octoriz.com',
                  style: TextStyle(
                    color: Colors.teal,
                    fontFamily: 'Source',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) => DicePage()
                ));
              },
              child: Text('DICEE', style: TextStyle(fontSize: 20)),
            ),

            RaisedButton(
              color: Colors.blue[300],
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) => XylophonePage()
                ));
              },
              child: Text('Xylophone', style: TextStyle(fontSize: 20)),
            ),

            RaisedButton(
              color: Colors.green[300],
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) => QuizzlerPage()
                ));
              },
              child: Text('QUIZZLER', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}


