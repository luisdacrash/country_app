import 'package:country_app/country.dart';
import 'package:country_app/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryScreen extends StatelessWidget {
  const CountryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(
          title: const Text('Country'),
        ),

        body: const CountryView(),
      );
    
  }
}

class CountryView extends StatelessWidget{
  const CountryView({super.key});
  
  @override
  Widget build(BuildContext context)  {

    final countryProvider = context.watch<CountryProvider>();

    final List<Country> countryList = countryProvider.countryList;
    
    final Country country = countryList[0];

    return Column(
      children: [
        Image.network(country.flagUrl)
      ],
    );
  }

}
