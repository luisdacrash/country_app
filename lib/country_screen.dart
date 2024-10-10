import 'package:country_app/country.dart';
import 'package:country_app/get_country.dart';
import 'package:flutter/material.dart';

class CountryScreen extends StatelessWidget {
  const CountryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(

        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),

        body: const CountryView(),
      ),
    );
  }
}

class CountryView extends StatelessWidget{
  const CountryView({super.key});
  
  
  @override
  Widget build(BuildContext context)  {
    final getCountry = GetCountry();
    final Country country = getCountry.getCountryApi();
    return Column(
      children: [
        NetworkImage(country.flagUrl)
      ],
    );
  }

}
