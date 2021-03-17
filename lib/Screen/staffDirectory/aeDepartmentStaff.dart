import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class AEDepartment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Applied Science',
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
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('aeStaff').snapshots(),
          builder: (BuildContext context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                  child: new Text('Loading....',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0)));
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot collegeStaff =
                        snapshot.data.documents[index];

                    return Container(
                      child: Column(
                        children: [
                          // Card(
                          //   elevation: 0,
                          //   margin: new EdgeInsets.symmetric(
                          //       horizontal: 40.0, vertical: 20.0),
                          //   child: Column(
                          //     //mainAxisSize: MainAxisSize.min,
                          //     children: <Widget>[
                          //       Container(
                          //         height: 50,
                          //         child: Container(
                          //           decoration: BoxDecoration(
                          //             borderRadius: BorderRadius.circular(0),
                          //             boxShadow: [
                          //               BoxShadow(
                          //                 color: Colors.grey[300],

                          //                 offset: Offset(0, 2), //(x,y)
                          //                 blurRadius: 1.3,
                          //               ),
                          //             ],
                          //           ),
                          //           child: ListTile(
                          //             tileColor: Colors.white,
                          //             title: Padding(
                          //               padding:
                          //                   EdgeInsets.only(bottom: 6, top: 0),
                          //               child: Center(
                          //                 child: Text(
                          //                   'Computer Science Engineering',
                          //                   style: TextStyle(
                          //                       fontWeight: FontWeight.w700,
                          //                       fontSize: 22,
                          //                       fontFamily: 'OpenSans'),
                          //                 ),
                          //               ),
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          SizedBox(height: 30),
                          Card(
                            elevation: 0,
                            margin: new EdgeInsets.symmetric(
                                horizontal: 40.0, vertical: 2.5),
                            child: Column(
                              //mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                // Container(
                                //   height: 50,
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(0),
                                //       boxShadow: [
                                //         BoxShadow(
                                //           color: Colors.grey[300],

                                //           offset: Offset(0, 2), //(x,y)
                                //           blurRadius: 1.3,
                                //         ),
                                //       ],
                                //     ),
                                //     child: ListTile(
                                //       tileColor: Colors.grey[400],
                                //       title: Padding(
                                //         padding: EdgeInsets.only(
                                //             bottom: 6, top: 0, left: 4),
                                //         child: Center(
                                //           child: Text(
                                //             collegeStaff.data()['name'],
                                //             style: TextStyle(
                                //                 fontWeight: FontWeight.w600,
                                //                 fontSize: 21,
                                //                 fontFamily: 'OpenSans'),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),

                                ExpansionTileCard(
                                  elevation: 0.0,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0)),
                                  baseColor: Colors.grey[400],
                                  expandedColor: Colors.grey[50],
                                  shadowColor: Colors.grey[50],
                                  expandedTextColor: Colors.black,
                                  title: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 4, top: 0, left: 4),
                                    child: Text(
                                      collegeStaff.data()['name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 21,
                                          fontFamily: 'OpenSans'),
                                    ),
                                  ),
                                  children: [
                                    Column(
                                      children: [
                                        // Container(
                                        //   margin: EdgeInsets.only(
                                        //       top: MediaQuery.of(context).size.height *
                                        //           .02),
                                        //   height:
                                        //       MediaQuery.of(context).size.height * .20,
                                        //   decoration: BoxDecoration(
                                        //     image: DecorationImage(
                                        //       image: AssetImage(collegeStaff.data()['image']),
                                        //     ),
                                        //   ),
                                        // ),
                                        // Container(
                                        //   margin: EdgeInsets.only(
                                        //       top: MediaQuery.of(context)
                                        //               .size
                                        //               .height *
                                        //           .02),
                                        //   child: Text(
                                        //     collegeStaff.data()['designation'],
                                        //     style: TextStyle(
                                        //         fontWeight: FontWeight.w400,
                                        //         fontSize: 21,
                                        //         fontFamily: 'OpenSans'),
                                        //   ),
                                        // ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .02),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                width: 146,
                                                child: RaisedButton(
                                                  color: Colors.grey[400],
                                                  elevation: 0.7,
                                                  child: Text(
                                                    'Designation',
                                                    style: TextStyle(
                                                      fontFamily: 'OpenSans',
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                              Container(
                                                width: 250,
                                                child: RaisedButton(
                                                  elevation: 0.7,
                                                  color: Colors.white,
                                                  child: Text(
                                                    collegeStaff
                                                        .data()['designation'],
                                                    style: TextStyle(
                                                      fontFamily: 'OpenSans',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .01),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                width: 146,
                                                child: RaisedButton(
                                                  color: Colors.grey[400],
                                                  elevation: 0.7,
                                                  child: Text(
                                                    'Email',
                                                    style: TextStyle(
                                                      fontFamily: 'OpenSans',
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                              Container(
                                                width: 250,
                                                child: RaisedButton(
                                                  elevation: 0.7,
                                                  color: Colors.white,
                                                  child: Text(
                                                    collegeStaff
                                                        .data()['email'],
                                                    style: TextStyle(
                                                      fontFamily: 'OpenSans',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .01),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                width: 146,
                                                child: RaisedButton(
                                                  color: Colors.grey[400],
                                                  elevation: 0.7,
                                                  child: Text(
                                                    'Staff Room',
                                                    style: TextStyle(
                                                      fontFamily: 'OpenSans',
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                              Container(
                                                width: 250,
                                                child: RaisedButton(
                                                  elevation: 0.7,
                                                  color: Colors.white,
                                                  child: Text(
                                                    collegeStaff.data()['room'],
                                                    style: TextStyle(
                                                      fontFamily: 'OpenSans',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            }
          }),
    );
  }
}
