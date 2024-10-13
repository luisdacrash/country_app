import 'package:country_app/country.dart';
import 'package:country_app/get_country.dart';
import 'package:flutter/material.dart';

class CountryProvider extends ChangeNotifier{

  List<Country> countryList = [];
  
  final getCountry = GetCountry();

  Future<void> provideCountry() async{
    
    final country = await getCountry.getCountryApi();

    countryList.add(country);

    notifyListeners();
  }

  
}
