import 'package:flutterawy/model/LanguageCategory.dart';

class LanguageData {
  var _categories = [
    LanguageCategory(id: 1, title: "Greetings", img: "greetings.svg"),
    LanguageCategory(id: 2, title: "General Conversation", img: "chatting.svg"),
    LanguageCategory(id: 3, title: "Numbers", img: "numbers.svg"),
    LanguageCategory(id: 4, title: "Time &  Date", img: "time.svg"),
    LanguageCategory(id: 5, title: "Directions & places", img: "directions.svg"),
    LanguageCategory(id: 6, title: "Transportation", img: "transportation.svg"),
    LanguageCategory(id: 7, title: "Accommoda- \n tion", img: "accomodation.svg"),
    LanguageCategory(id: 8, title: "Eating out", img: "eating.svg"),
    LanguageCategory(id: 9, title: "shopping ", img: "shopping.svg"),


  ];

  List<LanguageCategory> getLanguageCategories (){
      return _categories;
  }

}
