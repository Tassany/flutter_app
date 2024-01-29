import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var colorScheme;
    return MaterialApp(
      title: 'Pipipopo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(title: Text("Pipipopo")),
      body: TextInputWidget(),
    );
  }
}

class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {

  final controller = TextEditingController();

  String text = "";
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return 
    TextField(
        controller: this.controller,
        decoration: InputDecoration(prefixIcon: Icon(Icons.message),
          labelText: "Type a message: ",
          suffixIcon: IconButton(
            icon: Icon(Icons.send),
            onPressed: () => {} ,
            tooltip:  "Post message",
            splashColor: Colors.red))
    );
  }
}