import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FireBase_Messaging extends StatefulWidget {
  @override
  _FireBase_MessagingState createState() => _FireBase_MessagingState();
}

class _FireBase_MessagingState extends State<FireBase_Messaging> {
  final FirebaseMessaging _fc =FirebaseMessaging();
  
  @override
  void initState() {
    super.initState();
    subscribeToEvent();
    getDeviceToken();
    configureCallbacks();
    }
    @override
    Widget build(BuildContext context) {
      return Container(
          
      );
    }
    
    void configureCallbacks() {
        _fc.configure(
          onMessage: (message)async{
            showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                            content: ListTile(
                            subtitle: Text('onMessage'),
                            ),
                            actions: <Widget>[
                            FlatButton(
                                child: Text('Ok'),
                                onPressed: () => Navigator.of(context).pop(),
                            ),
                        ],
                    ),
            );
          },
          onResume: (message) async {
            showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                            content: ListTile(
                            subtitle: Text('onResume'),
                            ),
                            actions: <Widget>[
                            FlatButton(
                                child: Text('Ok'),
                                onPressed: () => Navigator.of(context).pop(),
                            ),
                        ],
                    ),
            );
          },
          onLaunch: (message)async {
             showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                            content: ListTile(
                            subtitle: Text('onLaunch'),
                            ),
                            actions: <Widget>[
                            FlatButton(
                                child: Text('Ok'),
                                onPressed: () => Navigator.of(context).pop(),
                            ),
                        ],
                    ),
            );
          }
        );
    }
    
    void getDeviceToken() async{
        String deviceToken= await _fc.getToken();
        print('************* : $deviceToken');
    }

    void subscribeToEvent() {
      _fc.subscribeToTopic('Events');
    }
}