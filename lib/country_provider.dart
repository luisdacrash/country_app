import 'package:country_app/country.dart';
import 'package:country_app/get_country.dart';
import 'package:flutter/material.dart';

class CountryProvider extends ChangeNotifier{

  late Country country;
  
  final getCountry = GetCountry();

  Future<void> provideCountry(String pais) async{
    
    country = await getCountry.getCountryApi(pais);

    notifyListeners();
  }

  
}
