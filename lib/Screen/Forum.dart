import 'package:flutter/material.dart';
import 'package:proddeccec/Screen/forum/addEvent/iedc/iedc.dart';
import 'package:proddeccec/Screen/forum/addEvent/ieee/ieee.dart';
import 'package:proddeccec/Screen/forum/addEvent/ncc/ncc.dart';
import 'package:proddeccec/Screen/forum/addEvent/nss/nss.dart';
import 'package:proddeccec/Screen/forum/addEvent/exess/exess.dart';
import 'package:proddeccec/Screen/forum/addEvent/arc/arc.dart';
import 'package:proddeccec/Screen/forum/addEvent/foces/foces.dart';
import 'package:proddeccec/Screen/forum/addEvent/surge/surge.dart';
import 'package:proddeccec/Screen/forum/addEvent/proddec/proddec.dart';
import 'package:proddeccec/backend/size_config.dart';

class Forum extends StatefulWidget {
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;

    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FORUM',
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 27,
            fontWeight: FontWeight.w700,
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
        child: isLoading
            ? Center(child: CircularProgressIndicator())
            : GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.height * .01),
                        child: FlatButton(
                          highlightColor: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event1()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 12,
                                ),
                                width: MediaQuery.of(context).size.width * 1,
                                height:
                                    MediaQuery.of(context).size.height * .16,
                                child: Image(
                                  image: AssetImage("images/logo.png"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: RaisedButton(
                                elevation: 1.3,
                                color: Colors.grey[400],
                                highlightColor: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(
                                      color: Colors.grey[400],
                                    )),
                                splashColor: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Event1()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0,
                                      top: 9.0,
                                      left: 26,
                                      right: 26),
                                  child: Container(
                                    child: Text(
                                      "PRODDEC",
                                      style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.height * .01),
                        child: FlatButton(
                          highlightColor: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event2()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 22,
                                ),
                                width: MediaQuery.of(context).size.width * 1,
                                height:
                                    MediaQuery.of(context).size.height * .15,
                                child: Image(
                                  image: AssetImage("images/Nss.png"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: RaisedButton(
                                elevation: 1.3,
                                color: Colors.grey[400],
                                highlightColor: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(
                                      color: Colors.grey[400],
                                    )),
                                splashColor: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Event2()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0,
                                      top: 9.0,
                                      left: 60,
                                      right: 60),
                                  child: Container(
                                    child: Text(
                                      "NSS",
                                      style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.height * .01),
                        child: FlatButton(
                          highlightColor: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event4()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 22,
                                ),
                                width: MediaQuery.of(context).size.width * 1,
                                height:
                                    MediaQuery.of(context).size.height * .16,
                                child: Image(
                                  image: AssetImage("images/Ieee.png"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: RaisedButton(
                                elevation: 1.3,
                                color: Colors.grey[400],
                                highlightColor: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(
                                      color: Colors.grey[400],
                                    )),
                                splashColor: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Event4()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0,
                                      top: 9.0,
                                      left: 59,
                                      right: 58),
                                  child: Container(
                                    child: Text(
                                      "IEEE",
                                      style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.height * .01),
                        child: FlatButton(
                          highlightColor: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event3()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 12,
                                ),
                                width: MediaQuery.of(context).size.width * 1,
                                height:
                                    MediaQuery.of(context).size.height * .16,
                                child: Image(
                                  image: AssetImage("images/ncc.png"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: RaisedButton(
                                elevation: 1.3,
                                color: Colors.grey[400],
                                highlightColor: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(
                                      color: Colors.grey[400],
                                    )),
                                splashColor: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Event3()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0,
                                      top: 9.0,
                                      left: 58,
                                      right: 58),
                                  child: Container(
                                    child: Text(
                                      "NCC",
                                      style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.height * .01),
                        child: FlatButton(
                          highlightColor: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event6()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 12,
                                ),
                                width: MediaQuery.of(context).size.width * 1,
                                height:
                                    MediaQuery.of(context).size.height * .16,
                                child: Image(
                                  image: AssetImage("images/foces.png"),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: RaisedButton(
                                elevation: 1.3,
                                color: Colors.grey[400],
                                highlightColor: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(
                                      color: Colors.grey[400],
                                    )),
                                splashColor: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Event6()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0,
                                      top: 9.0,
                                      left: 46,
                                      right: 45),
                                  child: Container(
                                    child: Text(
                                      "FOCES",
                                      style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.height * .01),
                        child: FlatButton(
                          highlightColor: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event5()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 28,
                                  bottom: 14,
                                ),
                                width: MediaQuery.of(context).size.width * 1,
                                height:
                                    MediaQuery.of(context).size.height * .16,
                                child: Image(
                                  image: AssetImage("images/iedc.png"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: RaisedButton(
                                elevation: 1.3,
                                color: Colors.grey[400],
                                highlightColor: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(
                                      color: Colors.grey[400],
                                    )),
                                splashColor: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Event5()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0,
                                      top: 9.0,
                                      left: 56,
                                      right: 55),
                                  child: Container(
                                    child: Text(
                                      "IEDC",
                                      style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.height * .01),
                        child: FlatButton(
                          highlightColor: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event7()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 12,
                                ),
                                width: MediaQuery.of(context).size.width * 1,
                                height:
                                    MediaQuery.of(context).size.height * .16,
                                child: Image(
                                  image: AssetImage("images/arc.png"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: RaisedButton(
                                elevation: 1.3,
                                color: Colors.grey[400],
                                highlightColor: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(
                                      color: Colors.grey[400],
                                    )),
                                splashColor: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Event7()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0,
                                      top: 9.0,
                                      left: 59,
                                      right: 59),
                                  child: Container(
                                    child: Text(
                                      "ARC",
                                      style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.height * .01),
                        child: FlatButton(
                          highlightColor: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event9()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 12,
                                ),
                                width: MediaQuery.of(context).size.width * 1,
                                height:
                                    MediaQuery.of(context).size.height * .16,
                                child: Image(
                                  image: AssetImage("images/surge.png"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: RaisedButton(
                                elevation: 1.3,
                                color: Colors.grey[400],
                                highlightColor: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(
                                      color: Colors.grey[400],
                                    )),
                                splashColor: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Event9()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0,
                                      top: 9.0,
                                      left: 44,
                                      right: 43),
                                  child: Container(
                                    child: Text(
                                      "SURGE",
                                      style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.height * .01),
                        child: FlatButton(
                          highlightColor: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(
                                color: Colors.transparent,
                              )),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event8()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 20,
                                  bottom: 10,
                                ),
                                width: MediaQuery.of(context).size.width * 1,
                                height:
                                    MediaQuery.of(context).size.height * .16,
                                child: Image(
                                  image: AssetImage("images/exess.png"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: RaisedButton(
                                elevation: 1.3,
                                color: Colors.grey[400],
                                highlightColor: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(
                                      color: Colors.grey[400],
                                    )),
                                splashColor: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Event8()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0,
                                      top: 9.0,
                                      left: 49,
                                      right: 48),
                                  child: Container(
                                    child: Text(
                                      "EXESS",
                                      style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
