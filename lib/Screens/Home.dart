import 'package:flutter/material.dart';

import '../routing_constants.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Text('Im Home'),
                RaisedButton(
                  child: Text('Btn'),
                  onPressed: (){Navigator.pushNamed(context, SettingsRoute);}
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
