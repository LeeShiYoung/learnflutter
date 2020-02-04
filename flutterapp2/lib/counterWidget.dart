import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  CounterWidget({Key key, this.intValue: 0, this.title: ''}) : super(key: key);

  final int intValue;

  final String title;

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    super.initState();
    this._counter = widget.intValue;
    print('intState');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FlatButton(
          child: Text('$_counter'),
          onPressed: () => setState(
            () => ++_counter,
          ),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }
}
