import 'package:esperar_users/domain/entities/county%20state%20city/cities.dart';
import 'package:esperar_users/domain/entities/county%20state%20city/country.dart';

abstract class CountyStateCityInterface {
  Future<List<Country>?>? getCountries();
  Future<List<Country>?>? getStates(String country);
  Future<List<Cities>?>? getCities(String country, String state);
}
