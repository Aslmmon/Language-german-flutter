import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutterawy/model/LanguageTranslation.dart';

class JsonReader {
  List _dataNeeded;

  Future<String> loadAsset() async {
    String data = await rootBundle.loadString("assets/json/germanDB.json");
    _dataNeeded = json.decode(data);
  }

  List<LanguageTranslation> getData() {
    List<LanguageTranslation> lista = [];
    for (int i = 0; i < _dataNeeded.length; i++) {
      lista.add(LanguageTranslation(From: _dataNeeded[i]["greeting_english"],
          To: _dataNeeded[i]["greeting_german"]));
    }
    return lista;
  }
}
