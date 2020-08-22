import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LanguageViewCategory extends StatelessWidget {
  final languageCategory;

  LanguageViewCategory({this.languageCategory});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: InkWell(
        onTap: () {
          print(languageCategory);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/${languageCategory.img}",
              width: 40,
              height: 40,
            ),
            SizedBox(height: 5),
            Text(languageCategory.title,textAlign:TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
