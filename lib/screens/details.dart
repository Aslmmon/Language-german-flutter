import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterawy/data/jsonReader.dart';

class Details extends StatefulWidget {
  static const String routeName = "detailsScreen";

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  dynamic response;
  var title = "Hii";
  var json = JsonReader();

  @override
  void initState() {
    super.initState();
     updateUI();
   // print(json.getData());
  }

  Future<void> updateUI() async{
    await json.loadAsset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ignore: missing_return
        child: ListView.builder(itemBuilder: (BuildContext context, int index){
          return Container(
            height: 50,
            color: Colors.amber,
            child: Center(child: Text('${json.getData()[index].From}')),
          );
        },itemCount: json.getData().length,)
      ),
    );
  }
}
