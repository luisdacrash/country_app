import 'package:country_app/country.dart';
import 'package:country_app/country_model.dart';
import 'package:dio/dio.dart';

class GetCountry{
  final dio = Dio();

  Future<Country> getCountryApi() async {
    final response = await dio.get("https://restcountries.com/v3.1/name/spain");

    final CountryModel countryModel = CountryModel.fromJsonMap(response.data);
    
    return countryModel.toCountryEntity();
   
  }
}