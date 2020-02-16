import 'package:flutter/material.dart';

class ListViewRoute extends StatefulWidget {
  ListViewRoute({Key key}) : super(key: key);

  @override
  _ListViewRouteState createState() => _ListViewRouteState();
}

class _ListViewRouteState extends State<ListViewRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListView')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ConstrainedBox(
              child: Container(
                child: Text('这是个列表'),
                decoration: BoxDecoration(color: Colors.orange),
              ),
              constraints:
                  BoxConstraints(minWidth: double.infinity, minHeight: 40),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text("$index"));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.orange,
                    height: 100,
                  );
                },
              ),
            )
          ],
        ));
  }
}
