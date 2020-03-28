import 'package:flutter/material.dart';
import 'package:flutter_login_demo/pages/home_page.dart';
import 'package:geolocator/geolocator.dart';





class App extends StatefulWidget {
  @override 
  AppState createState() => AppState(); 
}

class AppState extends State<App> {
  HomePage a= new HomePage();
  String _locationMessage = ""; 

  void getCurrentLocation() async {

    final position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);

    setState(() {
      _locationMessage = "${position.latitude}, ${position.longitude}";
    });

  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Location Services")
        ),
        body: Align(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text('Your Location Coordinates are:'),  
            Text(_locationMessage), 
            Text('Check Your Location at: https://www.google.com/maps/search/?api=1&query=$_locationMessage'),
          ]),
        )
      )
    );
  }
}