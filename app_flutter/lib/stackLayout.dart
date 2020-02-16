import 'package:flutter/material.dart';

class StackRoute extends StatefulWidget {
  StackRoute({Key key}) : super(key: key);

  @override
  _StackRouteState createState() => _StackRouteState();
}

class _StackRouteState extends State<StackRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: Container(
        // width: 300,
        // height: 300,
        color: Colors.orangeAccent,
        child: Align(
          widthFactor: 2,
          heightFactor: 2,
          alignment: Alignment(1.0, -1.0),
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}

// Scaffold(
//         body: Container(
//           child: Stack(
//             alignment: Alignment.center,
//             children: <Widget>[
//               Text("Hello World!",
//                   style: TextStyle(fontSize: 20, color: Colors.black12)),
//               Positioned(
//                 left: 18.0,
//                 top: 20.0,
//                 child: Text(
//                   "Young",
//                   style: TextStyle(fontSize: 50, color: Colors.pink),
//                 ),
//               )
//             ],
//           ),
//           width: 400,
//           height: 400,
//           color: Colors.deepOrange,
//         ));
