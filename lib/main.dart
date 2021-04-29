import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My portfolio"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                ),
                Container(
                  child: Stack(
                    children: [
                      _getBody(),
                      _getPic(),
                    ],
                  ),
                ),
                _getSkills(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _getBody() {
    return Container(
      width: 500,
      height: 250,
      margin: EdgeInsets.fromLTRB(20, 65, 20, 0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                "Yage Ofunrein",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            padding: EdgeInsets.all(10),
            child: Text(
              "An ehtuastic FullStack web/mobile App developer with over 3yrs project development.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.add_ic_call_sharp),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    "08026207829",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.attach_email_sharp),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      "yahg.concept@gmail.com",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.chat_bubble_sharp),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text("github.io/yage",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Center _getPic() {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            border: Border.all(color: Colors.blue[50], width: 2.5),
            image: DecorationImage(
                fit: BoxFit.cover, image: new AssetImage("assests/pic.jpg"))),
      ),
    );
  }

  Container _getSkills() {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(20),
              child: Text(
                "Language,Tools and frameWorks",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1)),
                child: Card(
                    elevation: 12,
                    child: Text(
                      "Javascript/Angular 4/Express/Nodejs",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.blueAccent),
                    ))),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1)),
                child: Card(
                    elevation: 12,
                    child: Text(
                      "Dart/Flutter",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.blueAccent),
                    ))),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1)),
                child: Card(
                    elevation: 12,
                    child: Text(
                      "MogoDb/Mongoose",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.blueAccent),
                    ))),
          ],
        ));
  }
}
