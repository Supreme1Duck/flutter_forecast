import 'package:flutter/material.dart';
import 'package:flutter_forecast/data/home_data.dart';

class TodayPage extends StatefulWidget {
  @override
  _TodayPageState createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Today", style: HomeData.optionStyle)),
        elevation: 0,
      ),
      body: Container(
        
      ),
    );
  }
}
