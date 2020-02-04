import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget {
  TapBoxA({Key key}) : super(key: key);

  @override
  _TapBoxAState createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
            child: Text(_active ? 'Active' : 'Inactive',
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                    decoration: TextDecoration.none))),
        width: 200.0,
        height: 200.0,
        decoration:
            new BoxDecoration(color: _active ? Colors.red : Colors.green),
      ),
    );
  }
}
