import 'package:flutter/material.dart';

class FlexRoute extends StatefulWidget {
  FlexRoute({Key key}) : super(key: key);

  @override
  _FlexRouteState createState() => _FlexRouteState();
}

class _FlexRouteState extends State<FlexRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("flex")),
      body: Container(
        child: Column(
          children: <Widget>[
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    height: 30,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                    height: 30,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 200,
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.orange,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.yellow,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
