import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  InputWidget({Key key}) : super(key: key);

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController _editingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _editingController.addListener(() {
      print(_editingController.text);
    });
  }

  void _textChanged(String text) {
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
        backgroundColor: Colors.black12,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: '用户名', hintText: '请输入'),
              autofocus: true,
              controller: _editingController,
            ),
            TextField(
              decoration: InputDecoration(labelText: '密码', hintText: '请输入'),
              autofocus: true,
              obscureText: true,
              onChanged: _textChanged,
            )
          ],
        ),
      ),
    );
  }
}
