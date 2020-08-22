import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterawy/base/constants.dart';
import 'package:flutterawy/screens/home.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splashScreen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .popAndPushNamed('${HomeScreen.routeName}', arguments: "hello");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/images/german_flag.jpg'),height: 200,width: 200),
            Text("Learn German Now",style: logoTextStyle,)
          ],
        ),
      ),
    );
  }
}
