import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class gui extends StatelessWidget {
  final TapGestureRecognizer __gestureRecognizer = TapGestureRecognizer()
    ..onTap = () {
      debugPrint("hehehe");
    };

  @override
  Widget build(BuildContext context) {
    OnclickPrint() {
      print("hey you");
    }

    OnclickPrint2() {
      print("hey yodqdqdqdu");
    }

    List<String> locations = ['Europe', 'America'];
    return new Scaffold(
      backgroundColor: Colors.white70,
      appBar: new AppBar(
        title: new RichText(
            text: TextSpan(
                text: "Explore ",
                style: new TextStyle(color: Colors.black, fontSize: 30),
                children: [
              TextSpan(
                  text: "Europe",
                  style: TextStyle(color: Colors.blue),
                  recognizer: __gestureRecognizer),
              WidgetSpan(
                child: PopupMenuButton(
                    child: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.blue,
                    ),
                    itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                          PopupMenuItem(
                            child: Text(
                              locations[0],
                            ),
                            value: 0,
                          ),
                          PopupMenuItem(
                            child: Text(locations[1]),
                            value: 1,
                          )
                        ]),
              )
            ])

//Icon(Icons.arrow_drop_down_outlined,color: Colors.blue,)
            ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          new IconButton(
            icon: Image.asset('assets/images/icons/download.jpg'),
            onPressed: () => Icons.exit_to_app,
          )
        ],
      ),
      body: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          new Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: Text(
                  "YOUR TRIP",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                margin: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
              ),
              Container(
                  padding: EdgeInsets.all(60),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/icons/image2.png'),
                        fit: BoxFit.fill,
                      )),
                  margin: EdgeInsets.all(2),
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Europe 2021",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "13 locations - 1922 Km",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      SizedBox(width: 30),
                      ButtonTheme(
                          buttonColor: Colors.white,
                          minWidth: 60,
                          height: 36,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text("Edit"),
                            padding: EdgeInsets.all(10),
                          ))

                      // RaisedButton(
                      //
                      //   onPressed: () {},
                      //   child: Text("Edit"),
                      //   padding: EdgeInsets.all(10),
                      // )
                    ],
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: Text(
                  "MUST SEE",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                margin: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      width: 280,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100,
                            padding: EdgeInsets.all(60),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image:
                                  AssetImage('assets/images/icons/norse.jpg'),
                              fit: BoxFit.fill,
                            )),
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Tromso, Norway",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "31 hotels - 133 restaurants",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black.withOpacity(0.3)),
                                  )
                                ],
                              ),
                              SizedBox(width: 30),
                              Container(
                                width: 80,
                                child: RaisedButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      color: Colors.white,
                      width: 280,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100,
                            padding: EdgeInsets.all(60),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image:
                                  AssetImage('assets/images/icons/barca.jpg'),
                              fit: BoxFit.fill,
                            )),
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Barcelona, Spain",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "92 hotels - 242 restaurants",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black.withOpacity(0.3)),
                                  )
                                ],
                              ),
                              SizedBox(width: 30),
                              Container(
                                width: 80,
                                child: RaisedButton(
                                  onPressed: () {},
                                  color: Colors.blue,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: Text(
                  "PRE-MADE PLANS",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                margin: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      width: 280,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 150,
                            padding: EdgeInsets.all(60),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image:
                                  AssetImage('assets/images/icons/house1.jpg'),
                              fit: BoxFit.fill,
                            )),
                          ),
                          SizedBox(width: 10),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 120,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Norway in Winter",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "Check out these beautiful spots in Norway at their best during this Winter!",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.black.withOpacity(0.3)),
                                    ),
                                    Text(
                                      "\$499",
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 30),
                          // Container(
                          //   width: 80,
                          //   child: RaisedButton(
                          //     onPressed: null,
                          //     child: Icon(
                          //       Icons.add,
                          //       color: Colors.black,
                          //     ),
                          //     color: Colors.blue,
                          //     padding: EdgeInsets.symmetric(vertical: 10),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      color: Colors.white,
                      width: 280,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 150,
                            padding: EdgeInsets.all(60),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image:
                                  AssetImage('assets/images/icons/paris.jpg'),
                              fit: BoxFit.fill,
                            )),
                          ),
                          SizedBox(width: 10),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 120,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Norway in Winter",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "Check out these beautiful spots in Norway at their best during this Winter!",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.black.withOpacity(0.3)),
                                    ),
                                    Text(
                                      "\$499",
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 30),
                          // Container(
                          //   width: 80,
                          //   child: RaisedButton(
                          //     onPressed: null,
                          //     child: Icon(
                          //       Icons.add,
                          //       color: Colors.black,
                          //     ),
                          //     color: Colors.blue,
                          //     padding: EdgeInsets.symmetric(vertical: 10),
                          //   ),
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home), label: "Home"),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.favorite), label: "Favorites"),
          new BottomNavigationBarItem(icon: new Icon(Icons.map), label: "Map"),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.person), label: "You")
        ],
        onTap: (int x) => debugPrint("index $x"),
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
      ),
    );
    throw UnimplementedError();
  }
}
