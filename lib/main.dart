import 'package:country_app/Config/Theme/app_theme.dart';
import 'package:country_app/country_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Country_App',

      theme: AppTheme().theme(),

      home: const CountryScreen()

    );
  }
}