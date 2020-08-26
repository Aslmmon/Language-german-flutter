import 'package:flutter/cupertino.dart';
import 'package:flutterawy/base/di/service_locator.dart';
import 'package:flutterawy/data/LanguageTranslationApi.dart';
import 'package:flutterawy/model/LanguageTranslation.dart';

class DetailsViewModel extends ChangeNotifier {
  final LanguageApi _languageApiService = serviceLocator<LanguageApi>();

  List<LanguageTranslation> _myList = [];
  List<LanguageTranslation> get languages => _myList;

  void loadData() async {
    final rickys = await _languageApiService.getLanguageTranslation();
    for (LanguageTranslation language in rickys) {
      _myList.add(language);
    }
    print(_myList.toString());
    // 5
    notifyListeners();
  }
}
