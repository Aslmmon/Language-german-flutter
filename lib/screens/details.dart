import 'package:flutter/cupertino.dart';
import 'package:flutterawy/data/jsonReader.dart';

class Details extends StatefulWidget {
  static const String routeName = "detailsScreen";

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var json = JsonReader();
  Future<List<dynamic>> response;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    response = json.loadAsset();
   //  print(response['id']);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hello"),
    );
  }
}
