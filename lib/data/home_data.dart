import 'package:flutter/material.dart';
import 'package:flutter_forecast/ui/forecast_page.dart';
import 'package:flutter_forecast/ui/today_page.dart';

class HomeData{
  static String currentWidget;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w400);

  static List<Widget> getPages(String title) {
    return <Widget>[
      TodayPage(),
      ForecastPage(title: title)
    ];
  }
}