import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterawy/base/di/service_locator.dart';
import 'package:flutterawy/screens/details/DetailsViewModel.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {
  static const String routeName = "detailsScreen";

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  DetailsViewModel model = serviceLocator<DetailsViewModel>();

  @override
  void initState() {
    model.loadData();
    print(model.languages.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ChangeNotifierProvider<DetailsViewModel>(
          create: (context) => model,
          child: Consumer<DetailsViewModel>(
              builder: (context, model, child) => ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          title: Text('${model.languages[index].To}'));
                    },
                    itemCount: model.languages.length,
                  )),
        ),
      ),
    );
  }
}
