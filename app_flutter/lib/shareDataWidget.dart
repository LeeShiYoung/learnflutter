import 'package:flutter/material.dart';

class ShareDataWidget extends InheritedWidget {
  ShareDataWidget({@required this.data, Widget child}) : super(child: child);

  final int data;

  static ShareDataWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(aspect: ShareDataWidget);
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return oldWidget.data != data;
  }
}

class ShareDataChild extends StatefulWidget {
  @override
  _ShareDataChildState createState() => _ShareDataChildState();
}

class _ShareDataChildState extends State<ShareDataChild> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("Dependencies change");
  }
}

class ShareDataRoute extends StatefulWidget {
  @override
  _ShareDataRouteState createState() => _ShareDataRouteState();
}

class _ShareDataRouteState extends State<ShareDataRoute> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share'),
      ),
      body: Center(
        child: ShareDataWidget(
            data: count,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: ShareDataChild(),
                  ),
                  RaisedButton(
                      child: Text('Increment'),
                      onPressed: () => setState(() => ++count))
                ])),
      ),
    );
  }
}
