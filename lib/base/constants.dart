import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color seaweed = const Color(0xff17d292);
const TextStyle logoTextStyle = const TextStyle(
  color: Colors.white,
  fontSize: 24,
  fontStyle: FontStyle.italic
);
const TextStyle headerTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontStyle: FontStyle.normal
);
AppBar appBarStyle =  AppBar(
  title: Text("Learn German", style: headerTextStyle),
  actions: [
    IconButton(
      icon: Icon(Icons.search),
      color: Colors.white,
      onPressed: (){
        print("search");
      },
    )
  ],
);