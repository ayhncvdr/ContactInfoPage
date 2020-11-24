import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blueGrey,
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("My Info"),
        ),
        backgroundColor: Colors.black12,
      ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(150, 150, 0, 0),
                  child: Image.asset(
                    "images/bogaziçi_logo.png",
                    width: 130.0,
                    height: 130.0,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 50, 310.0, 0),
              child: Text(
                "NAME",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25.0,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5.0, 180.0, 0),
              child: Text(
                "Ayhan Çavdar",
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 35.0,
                  fontFamily: 'NerkoOne',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(17.0, 20.0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.email,
                    size: 25.0,
                    color: Colors.grey,
                  ),
                  Text(
                    "  ayhan.cavdar@boun.edu.tr",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(17.0, 5.0, 0, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone_callback,
                    size: 25.0,
                    color: Colors.grey,
                  ),
                  Text(
                    "  0 (537) 994 89 24",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
