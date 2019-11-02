import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> _songs = [
      {
        "songAlbumPhoto": "https://picsum.photos/250?image=9",
        "songName": "Lights Up",
        "artist": "Harry Styles",
      }
    ];

    return Scaffold(
      body: Container(
          child: ListView.builder(
              itemCount: _songs.length,
              itemBuilder: (BuildContext buildContext, int index) {
                return new ListTile(
                  leading: Image.network(_songs[index]["songAlbumPhoto"]),
                  title: Text(_songs[index]["songName"]),
                  subtitle: Text(_songs[index]["artist"]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Icon(Icons.favorite)),
                      Container(child: Icon(Icons.add)),
                    ],
                  ),
                );
              })),
    );
  }
}
