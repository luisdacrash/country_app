import 'package:country_app/country.dart';
import 'package:country_app/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:country_app/text_box.dart';

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
    
    final Country country = countryProvider.country;

    return Column(
      children: [
        Center(
          child: Image.network(country.flagUrl)
        ),
        Center(
          child: Text("Nombre: ${country.name}")
        ),
        Center(
          child: Text("Capital: ${country.capital}")
        ),
        Center(
          child: Text("Poblacion: ${country.population}")
        ),
        const TextBox()
      ],
    );
  }

}
