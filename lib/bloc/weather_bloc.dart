import 'package:flutter_forecast/data/model.dart';
import 'package:flutter_forecast/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class WeatherBloc{
  final _repository = Repository.fromCity();
  final _weatherFetcher = PublishSubject<ItemModel>();

  Observable<ItemModel> get allWeather => _weatherFetcher.stream;

  fetchAllWeather() async{
    ItemModel itemModel = await _repository.fetchAllWeather();
    _weatherFetcher.sink.add(itemModel);
  }

  dispose(){
    _weatherFetcher.close();
  }

  final bloc = WeatherBloc();
}