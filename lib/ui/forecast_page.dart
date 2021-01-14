import 'package:flutter/material.dart';
import 'package:flutter_forecast/data/home_data.dart';

class ForecastPage extends StatefulWidget {
  String title;

  ForecastPage({@required this.title});

  @override
  _ForecastPageState createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text(widget.title, style: HomeData.optionStyle)),
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
