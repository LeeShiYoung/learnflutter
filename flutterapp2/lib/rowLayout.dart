import 'package:flutter/material.dart';

class RowRoute extends StatefulWidget {
  RowRoute({Key key}) : super(key: key);

  @override
  _RowRouteState createState() => _RowRouteState();
}

class _RowRouteState extends State<RowRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("Hello world"), Text("Young")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.ltr,
            children: <Widget>[Text("Hello world"), Text("Young")],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Text("Hello world", style: TextStyle(fontSize: 40)),
              Text("Young")
            ],
          )
          
        ],
      ),
    );
  }
}
