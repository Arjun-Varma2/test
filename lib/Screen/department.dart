import 'package:flutter/material.dart';

class Department extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DEPARTMENTS',
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 27,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Padding(padding: EdgeInsets.only(top: )),
                /*AppBar(
                  title: Center(
                      child: Text(
                    'Departments',
                    style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),
                  )),
                  backgroundColor: Colors.white,
                  shadowColor: Colors.white,
                ),*/

                Card(
                  elevation: 0,
                  margin: new EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 50,
                        child: ListTile(
                          tileColor: Colors.grey[400],
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 6, top: 0),
                            child: Center(
                              child: Text(
                                'Computer Science Engineering',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    fontFamily: 'OpenSans'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 47,
                            width: 240,
                            child: RaisedButton(
                              color: Colors.white,
                              elevation: 1.3,
                              child: Text(
                                'HoD : Dr Smitha Dharan',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                          Container(
                            height: 47,
                            width: 160,
                            child: RaisedButton(
                              color: Colors.white,
                              elevation: 1.3,
                              child: Text(
                                'Faculty',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 0,
                  margin: new EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 50,
                        child: ListTile(
                          tileColor: Colors.grey[400],
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 6, top: 0),
                            child: Center(
                              child: Text(
                                'Electronics Engineering',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    fontFamily: 'OpenSans'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 47,
                            width: 240,
                            child: RaisedButton(
                              color: Colors.white,
                              elevation: 1.3,
                              child: Text(
                                'HoD : Dr.Laila D',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                          Container(
                            height: 47,
                            width: 160,
                            child: RaisedButton(
                              color: Colors.white,
                              elevation: 1.3,
                              child: Text(
                                'Faculty',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 0,
                  margin: new EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 50,
                        child: ListTile(
                          tileColor: Colors.grey[400],
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 6, top: 0),
                            child: Center(
                              child: Text(
                                'Electrical Engineering',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    fontFamily: 'OpenSans'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 47,
                            width: 240,
                            child: RaisedButton(
                              color: Colors.white,
                              elevation: 1.3,
                              child: Text(
                                'HoD : Dr.Bindu C J',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                          Container(
                            height: 47,
                            width: 160,
                            child: RaisedButton(
                              color: Colors.white,
                              elevation: 1.3,
                              child: Text(
                                'Faculty',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 0,
                  margin: new EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 50,
                        child: ListTile(
                          tileColor: Colors.grey[400],
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 6, top: 0),
                            child: Center(
                              child: Text(
                                'General Engineering',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    fontFamily: 'OpenSans'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 47,
                            width: 240,
                            child: RaisedButton(
                              color: Colors.white,
                              elevation: 1.3,
                              child: Text(
                                'HoD : Dr.Ashok Kumar T V',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                          Container(
                            height: 47,
                            width: 160,
                            child: RaisedButton(
                              color: Colors.white,
                              elevation: 1.3,
                              child: Text(
                                'Faculty',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 0,
                  margin: new EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 50,
                        child: ListTile(
                          tileColor: Colors.grey[400],
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 6, top: 0),
                            child: Center(
                              child: Text(
                                'Applied Science',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    fontFamily: 'OpenSans'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 47,
                            width: 240,
                            child: RaisedButton(
                              color: Colors.white,
                              elevation: 1.3,
                              child: Text(
                                'HoD : Dr.Madhusoodhanan\nNair R',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                          Container(
                            height: 47,
                            width: 160,
                            child: RaisedButton(
                              color: Colors.white,
                              elevation: 1.3,
                              child: Text(
                                'Faculty',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
