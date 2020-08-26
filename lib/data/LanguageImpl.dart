import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutterawy/data/LanguageTranslationApi.dart';
import 'package:flutterawy/model/LanguageTranslation.dart';

class LanguageImpl extends LanguageApi{
  List _dataNeeded = [];
  @override
  Future<List<LanguageTranslation>> getLanguageTranslation() async {
    try {
      String data = await rootBundle.loadString("assets/json/germanDB.json");
      final jsonObject = json.decode(data);
      _dataNeeded = getFetchData(jsonObject);

    } catch (e) {
      print(e);
    }
    return _dataNeeded;
  }

  List getFetchData(jsonObject) {
    List<LanguageTranslation> lista = [];
    for (int i = 0; i < jsonObject.length; i++) {
      lista.add(LanguageTranslation(
          From: jsonObject[i]["greeting_english"],
          To: jsonObject[i]["greeting_german"]));
    }
    return lista;
  }

}