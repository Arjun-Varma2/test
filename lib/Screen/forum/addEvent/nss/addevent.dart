import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import 'package:proddeccec/Screen/forum/addEvent/nss/dbevent.dart';

class ProfilePage extends StatefulWidget {

  
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  TextEditingController eventNameController = TextEditingController();
  TextEditingController eventDetailsController = TextEditingController();
  TextEditingController eventDateController = TextEditingController();

  File _image;
  bool isLoading = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  EventService eventService = EventService();
  @override
  Widget build(BuildContext context) {
    void validateAndUpload() {
      if (_formKey.currentState.validate()) {
        setState(() => isLoading = true);
        if (_image != null) {
          String imageUrl;
          final FirebaseStorage storage = FirebaseStorage.instance;
          final String picture =
              "${DateTime.now().millisecondsSinceEpoch.toString()}.jpg";
          StorageUploadTask task = storage.ref().child(picture).putFile(_image);
          task.onComplete.then((snapshot) async {
            imageUrl = await snapshot.ref.getDownloadURL();
            String imageL = imageUrl;
            eventService.uploadDetails(
                eventName: eventNameController.text,
                details: eventDetailsController.text,
                date: eventDateController.text,
                image: imageL);
            _formKey.currentState.reset();
            setState(() => isLoading = false);
            Fluttertoast.showToast(msg: 'Event added');
           // Navigator.pop(context);
          });
        } else {
          setState(() => isLoading = false);
          Fluttertoast.showToast(msg: 'image must be provided');
        }
      }
    }

    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
        print('Image Path $_image');
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Event Upload'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          child: isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView(
                //  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height *.02),
                      child: Align(
                        alignment: Alignment.center,
                        child: OutlineButton(
                          child: Container(
                            width: MediaQuery.of(context).size.width * .5,
                            height: MediaQuery.of(context).size.width * .6,
                            child: (_image != null)
                                ? Image.file(
                                    _image,
                                    fit: BoxFit.fill,
                                  )
                                : Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                          ),
                          onPressed: () {
                            getImage();
                          },
                        ),
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.only(top:MediaQuery.of(context).size.width * .1),
                      child: TextFormField(
                        controller: eventNameController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Event name',
                          labelText: 'Event name',
                        ),
                       validator: (value){
                         if(value.isEmpty){
                           return 'You must enter the Event name';
                         }
                       },

                         
                      
                      ),
                    ),
                    TextFormField(
                      controller: eventDetailsController,
                      decoration:  InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Short words',
                        labelText: 'Short Words',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter some words';
                       }
                       if(value.length > 25){
                          return 'Should be less than 25 characters';
                       }
                     },
                    ),
                    TextFormField(
                      controller: eventDateController,
                      decoration:  InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Date (DD/MM/YYYY)',
                        labelText: 'Date (DD/MM/YYYY)',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter the date';
                       }
                     },
                    ),
                    SizedBox(
                      height:MediaQuery.of(context).size.width * .1,
                    ),
                   
                    RaisedButton(
                      color: Color(0xff476cfb),
                      onPressed: () {
                        validateAndUpload();
                      },
                      elevation: 4.0,
                      splashColor: Colors.blueGrey,
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
