import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shop page'),
        ),
        body: InfoCard(),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        myCard(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(34, 4, 0, 4),
              child: Text(
                'Address',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(34, 4, 0, 10),
              child: Text(
                '3660 Benedum Drive',
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(34, 4, 0, 4),
              child: Text(
                'City',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(34, 4, 0, 10),
              child: Text(
                'New York',
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(34, 4, 0, 4),
              child: Text(
                'Country',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(34, 4, 0, 10),
              child: Text(
                'United States of America',
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(34, 4, 0, 4),
              child: Text(
                'Distance',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(34, 4, 0, 10),
              child: Text(
                '2.45 km',
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget circularImage() {
    return Positioned(
      top: 0.0,
      left: 92,
      child: Container(
        width: 180.0,
        height: 180.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.fill,
            image: new NetworkImage(
                'https://cdn.concreteplayground.com/content/uploads/2014/11/rsz_corner_store1-e1534304229491-1920x1440.jpg'),
          ),
        ),
      ),
    );
  }

  Widget myCard() {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 450,
      child: Stack(
        children: [
          Positioned(
            top: 80,
            left: 20,
            child: Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: BoxConstraints(maxHeight: 410, maxWidth: 330),
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Text(
                    "The Corner Store",
                    style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 16.0,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "thcorner@store.com",
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 16.0,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "99893-385-56-17",
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.call),
                        color: Colors.white,
                        iconSize: 40,
                        tooltip: "Call",
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.message),
                        color: Colors.white,
                        iconSize: 40,
                        tooltip: "Message",
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.email),
                        color: Colors.white,
                        iconSize: 40,
                        tooltip: "Email",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          circularImage(),
        ],
      ),
    );
  }
}
