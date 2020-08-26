import 'package:flutterawy/model/LanguageTranslation.dart';

abstract class LanguageApi{
  Future<List<LanguageTranslation>> getLanguageTranslation();

}