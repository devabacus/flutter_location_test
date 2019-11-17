import 'package:flutter/material.dart';
import 'package:location/location.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}




class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(appBar: AppBar(title: Text('Flutter Demo Home Page'))),
    );
  }

  get_location() async {
    var location = Location();
     LocationData currentLocation = await location.getLocation();
      print('${currentLocation.latitude},${currentLocation.longitude}');

  }

  @override
  void initState() {
      get_location();
  }
}

