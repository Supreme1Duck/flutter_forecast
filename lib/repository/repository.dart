import 'package:flutter_forecast/data/model.dart';
import 'package:flutter_forecast/repository/wether_api_provider.dart';

class Repository{
  WeatherApiProvider weatherApiProvider;
  String city = ' ';
  Repository.fromCity(){
    weatherApiProvider = WeatherApiProvider();
  }

  Future<ItemModel> fetchAllWeather() => weatherApiProvider.fetchWeatherList();
}