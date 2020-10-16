import 'package:flutter/material.dart';
import 'package:triton_chat/widgets/contacts.dart';
import '../models/authentication.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.auth, this.userId, this.onSignedOut})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback onSignedOut;
  final String userId;

  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _signOut() async {
    try {
      await widget.auth.signOut();
      widget.onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Friends',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 25.0,
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_add_alt),
            iconSize: 25.0,
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            iconSize: 25.0,
            color: Colors.white,
            onPressed: () {},
          ),
          FlatButton(
              child: Text('Logout',
                  style: TextStyle(fontSize: 20.0, color: Colors.white)),
              onPressed: _signOut)
        ],
      ),
      body: Contacts(),
    );
  }
}
