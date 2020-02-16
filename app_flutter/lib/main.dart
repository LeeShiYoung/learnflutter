import 'package:flutter/material.dart';
import 'package:app_flutter/contanierRoute.dart';
import 'package:app_flutter/flexLayout.dart';
import 'package:app_flutter/rowLayout.dart';
import 'package:app_flutter/stackLayout.dart';
import 'package:app_flutter/wrapLayout.dart';
// import 'package:english_words/english_words.dart';
// import 'package:english_words/english_words.dart';
import 'counterWidget.dart';
import 'boxA.dart';
import 'boxB.dart';
import 'input.dart';
import 'formRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        "counter": (context) => CounterWidget(
              title: 'counter',
            ),
        "boxA": (context) => TapBoxA(),
        "boxB": (context) => TapBoxB(),
        "input": (context) => InputWidget(),
        "form": (context) => FormRoute(),
        "row": (context) => RowRoute(),
        "flex": (context) => FlexRoute(),
        "wrap": (context) => WrapRoute(),
        "stack": (context) => StackRoute()
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _printYoung() => print('Young......');

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School'))
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text.rich(TextSpan(children: [
              TextSpan(text: 'Home:'),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(color: Colors.blue),
              )
            ])),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Image.network(
                'http://t8.baidu.com/it/u=1484500186,1503043093&fm=79&app=86&f=JPEG?w=1280&h=853',
                width: 375.0),
            Image(
              image: NetworkImage(
                  'http://t9.baidu.com/it/u=3363001160,1163944807&fm=79&app=86&f=JPEG?w=1280&h=830'),
            ),
            Icon(
              Icons.error,
              color: Colors.red,
            ),
            OutlineButton(
                child: Text('click me'),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaddingRoute()))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// class RandomWordsWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // 生成随机字符串
//     final wordPair = new WordPair.random();
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: new Text(wordPair.toString()),
//     );
//   }
// }
