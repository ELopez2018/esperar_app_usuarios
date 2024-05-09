import 'package:esperar_users/data/services/country_state_city.dart';
import 'package:esperar_users/domain/entities/county%20state%20city/cities.dart';
import 'package:esperar_users/domain/entities/county%20state%20city/country.dart';
import 'package:esperar_users/domain/repositories/country_state_city.dart';

class CountyStateCity extends CountyStateCityInterface {
  CountyStateCity({
    required this.countryStateCityService,
  });

  final CountryStateCityService countryStateCityService;

  @override
  Future<List<Country>?>? getCountries() async {
    return await countryStateCityService.getCountries();
  }

  @override
  Future<List<Country>?>? getStates(String country) async {
    return await countryStateCityService.getStates(country);
  }

  @override
  Future<List<Cities>?>? getCities(String country, String state) async {
    return await countryStateCityService.getCities(country, state);
  }
}
