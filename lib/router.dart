import 'package:flutter/material.dart';
import 'package:music_flutter/Screens/playlist_screen/playlist_screen.dart';
import 'package:music_flutter/routing_constants.dart';
import 'package:music_flutter/Screens/UndefinedView.dart';

import 'Screens/Home.dart';
import 'Screens/Settings.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => Home());
    case SettingsRoute:
      return MaterialPageRoute(builder: (context) => Settings());
    case PlaylistScreenRoute:
      return MaterialPageRoute(builder: (context) => PlaylistScreen());
    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedView(name: settings.name));
  }
}
