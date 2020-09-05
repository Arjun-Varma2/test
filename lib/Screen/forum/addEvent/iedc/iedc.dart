import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:proddeccec/Screen/forum/addEvent/proddec/addevent.dart';
import 'package:proddeccec/Screen/forum/addEvent/iedc/login.dart';
import 'package:proddeccec/backend/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Event5 extends StatefulWidget {
  @override
  _Event5State createState() => _Event5State();
}

class _Event5State extends State<Event5> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Events',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w700,
            // fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed:(){
              Navigator.push(
                         context,
                     MaterialPageRoute(
                          builder: (context) =>
                             LoginPage()
                    ),
                    );
            } ,
          )
        ],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('eIedc').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: new Text('No Event'));
            } else if (snapshot.hasError) {
              const Text('No data avaible right now');
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot myEvent = snapshot.data.docs[index];

                    return ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        // scrollDirection: Axis.vertical,
                        children: <Widget>[
                         

                          Container(
                              margin: EdgeInsets.all(
                                  SizeConfig.safeBlockHorizontal * 4),
                             
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Material(
                                      borderRadius: BorderRadius.circular(26.0),
                                       
                                        elevation: 14.0,
                                       
                                        shadowColor: Color(0x802196F3),
                                        child: Row(
                                          
                                          children: <Widget>[
                                          
                                            Container(
                                              width: SizeConfig
                                                      .safeBlockHorizontal *
                                                  35,
                                              height: SizeConfig
                                                      .safeBlockHorizontal *
                                                  35,
                                              child: ClipRRect(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        24.0),
                                                child: Image.network(
                                                  myEvent.data()['image'],
                                                  fit: BoxFit.fill,
                                                
                                                ),
                                              ),
                                            ),
                                         

                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: SizeConfig
                                                          .safeBlockHorizontal *
                                                      4),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .02,
                                                      top:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .02,
                                                    ),
                                                    child: Container(
                                                        child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: <Widget>[
                                                        Container(
                                                            child: Text(
                                                          myEvent
                                                              .data()['name'],
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: Colors.black,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .03,
                                                          ),
                                                        )),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .02,
                                                        ),
                                                        Container(
                                                            child: Text(
                                                          myEvent.data()[
                                                              'details'],
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Lekton',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Colors.black54,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .015,
                                                          ),
                                                        )),
                                                      
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .02,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 8.0),
                                                          child: Container(
                                                              child: Text(
                                                            myEvent
                                                                .data()['date'],
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color:
                                                                  Colors.blue,
                                                              fontSize: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  .027,
                                                            ),
                                                          )),
                                                        ),
                                                      ],
                                                    )),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ],
                                        ))),
                              )

                        
                        ]);
                  });
            }
          }),
    );
  }
}

