import 'package:flutter/material.dart';

class PaddingRoute extends StatefulWidget {
  PaddingRoute({Key key}) : super(key: key);

  @override
  _PaddingRouteState createState() => _PaddingRouteState();
}

class _PaddingRouteState extends State<PaddingRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('padding'),
      ),
      body: Padding(
        padding: EdgeInsets.all(0.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Hello world'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Young'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text('Flutter'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minWidth: double.infinity, minHeight: 100),
                child: Container(
                  height: 200,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.orange),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 200,
              child: Container(
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.orangeAccent),
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: Text('Young Flutter'),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
