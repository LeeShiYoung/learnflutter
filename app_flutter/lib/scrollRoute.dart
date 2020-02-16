import 'package:flutter/material.dart';

class ScrollableRoute extends StatefulWidget {
  ScrollableRoute({Key key}) : super(key: key);

  @override
  _ScrollableRouteState createState() => _ScrollableRouteState();
}

class _ScrollableRouteState extends State<ScrollableRoute> {
  String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Scrollable')),
        body: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: str
                    .split("")
                    .map((c) => Text(
                          c,
                          textScaleFactor: 20,
                        ))
                    .toList(),
              ),
            ),
          ),
        ));
  }
}
