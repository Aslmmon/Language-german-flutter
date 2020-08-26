import 'package:flutterawy/data/LanguageImpl.dart';
import 'package:flutterawy/data/LanguageTranslationApi.dart';
import 'package:flutterawy/screens/details/DetailsViewModel.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerLazySingleton<LanguageApi>(() => LanguageImpl());
  serviceLocator.registerFactory<DetailsViewModel>(() => DetailsViewModel());
}
