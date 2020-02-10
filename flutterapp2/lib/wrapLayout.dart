import 'package:flutter/material.dart';

class WrapRoute extends StatefulWidget {
  WrapRoute({Key key}) : super(key: key);

  @override
  _WrapRouteState createState() => _WrapRouteState();
}

class _WrapRouteState extends State<WrapRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("wrap")),
      body: Wrap(
        spacing: 10,
        runSpacing: 5,
        alignment: WrapAlignment.start,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
              child: Text('A'),
              backgroundColor: Colors.orange,
            ),
            label: Text('Avatar'),
          ),
          Chip(
            avatar: CircleAvatar(
              child: Text('A'),
              backgroundColor: Colors.orange,
            ),
            label: Text('Avatardsadsadsass'),
          ),
          Chip(
            avatar: CircleAvatar(
              child: Text('A'),
              backgroundColor: Colors.orange,
            ),
            label: Text('Avatarvvsdsad'),
          ),
          Chip(
            avatar: CircleAvatar(
              child: Text('A'),
              backgroundColor: Colors.orange,
            ),
            label: Text('Avatardsassdsadsadsadsa'),
          ),
          Chip(
            avatar: CircleAvatar(
              child: Text('A'),
              backgroundColor: Colors.orange,
            ),
            label: Text('Avatarqqdsazdsa'),
          ),
          Chip(
            avatar: CircleAvatar(
              child: Text('A'),
              backgroundColor: Colors.orange,
            ),
            label: Text('Avatadsadswwdar'),
          ),
          Chip(
            avatar: CircleAvatar(
              child: Text('A'),
              backgroundColor: Colors.orange,
            ),
            label: Text('Avatardsads'),
          )
        ],
      ),
    );
  }
}
