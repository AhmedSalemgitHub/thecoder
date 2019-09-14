import 'package:flutter_web/material.dart';
import 'package:thecoder/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Coder online',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'Main Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  AppBar myAppBar(){
    return AppBar(
        title: Text(title),
      );
  }
  
  Widget homeBody(BuildContext context){
  return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          FlatButton(
            child: Text("test the 21 Cards Game"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context){
                  return MainScreen();
                  }
                ),
              );
            },
          )
        ],
      );
}

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: myAppBar(),
      body: homeBody(context),
    );
  }
}
