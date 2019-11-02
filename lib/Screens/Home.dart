import 'package:flutter/material.dart';

import '../routing_constants.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final double minSize = 80;
  final double maxSize = 1000;

  void initState() {
    super.initState();

    _controller =
    AnimationController(vsync: this, duration: Duration(milliseconds: 500))
      ..addListener(() {
        setState(() {});
      });

    _animation =
        Tween<double>(begin: minSize, end: maxSize).animate(_controller);

  }

  AnimationController _controller;
  Animation<double> _animation;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            bottom: 0,
            height: _animation.value,
            child: GestureDetector(
              onTap: () => _onEvent(),
              onDoubleTap: () => Navigator.pushNamed(context, PlaylistScreenRoute),
              onVerticalDragEnd: (event) => _onEvent(),
              child: Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: minSize,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _onEvent() {
    if (_controller.isCompleted) {
      _controller.reverse(from: maxSize);
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
