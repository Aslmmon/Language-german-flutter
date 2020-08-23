import 'dart:convert';

import 'package:flutter/services.dart';

class JsonReader{
  Future<List> loadAsset() async {
    return  jsonDecode(await rootBundle.loadString('assets/json/germanDB.json'));
  }
}