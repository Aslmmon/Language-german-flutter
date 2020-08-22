import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterawy/base/constants.dart';
import 'package:flutterawy/data/languageData.dart';
import 'package:flutterawy/screens/widgets/LanguageCustomView.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";
  final String data;

  HomeScreen({this.data});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final languageData = LanguageData().getLanguageCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarStyle,
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(
                languageData.length,
                (index) => LanguageViewCategory(
                    languageCategory: languageData[index]))),
      ),
    );
  }
}
