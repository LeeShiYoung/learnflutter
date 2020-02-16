import 'package:flutter/material.dart';

class TapBoxB extends StatefulWidget {
  TapBoxB({Key key}) : super(key: key);

  @override
  _TapBoxBState createState() => _TapBoxBState();
}

class _TapBoxBState extends State<TapBoxB> {
  bool _active = false;

  void _handleTapBoxB(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChildBoxB(
        active: _active,
        onChanged: _handleTapBoxB,
      ),
    );
  }
}

class ChildBoxB extends StatelessWidget {
  const ChildBoxB({Key key, this.active: false, this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
            child: Text('Hello world'*10,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                    decoration: TextDecoration.none))),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}
