import 'package:flutter/material.dart';
import 'package:music_flutter/routing_constants.dart';
import 'router.dart' as router;
class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'music',
      onGenerateRoute:router.generateRoute ,
      initialRoute: HomeRoute,
    );
  }
}
