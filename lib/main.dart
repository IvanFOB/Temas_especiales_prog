import 'package:flutter/material.dart';

void main() {
  runApp(tarea());
}

class tarea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarein',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double count = 1.0;

  void contador() {
    setState(() {
      if (count >= 0.1) {
        count -= 0.1;
      } else {
        count = 1.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacidad en boton"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Opacity(
              opacity: count,
              child: Image.asset("images/Kratos.png"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: contador,
        tooltip: 'Increment',
        child: Icon(Icons.data_usage),
      ),
    );
  }
}
