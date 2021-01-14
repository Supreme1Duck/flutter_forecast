import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter_forecast/data/model.dart';

class WeatherApiProvider{
  Client client = Client();
  final _apiKey = '7110d8cc8802bbd242f674a682442a8a';
  String _city = 'London';

  WeatherApiProvider();

  Future <ItemModel> fetchWeatherList() async{
    print("entered");
    final response = await client
      .get("api.openweathermap.org/data/2.5/forecast?q=$_city&appid=$_apiKey");
    print(response.body.toString());
    if(response.statusCode == 200){
      return ItemModel.fromJson(json.decode(response.body));
    }else{
      throw Exception('Failed to load');
    }
  }
}