
import 'package:country_app/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextBox extends StatelessWidget {
  const TextBox({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    final countryProvider = context.watch<CountryProvider>();

    var textController = TextEditingController();

    var underlineInputBorder = UnderlineInputBorder(
      borderRadius : BorderRadius.circular(15),
      borderSide: const BorderSide(
        color: Colors.black
            
      )
    );

    final inputDecoration = InputDecoration(
      fillColor: colors.inversePrimary,
      hintText: "Escribe Aquí",
      enabledBorder: underlineInputBorder,
      focusedBorder: underlineInputBorder,
      filled: true,
    );
    return TextFormField(
      decoration: inputDecoration,
      controller: textController,
      onFieldSubmitted: (value) {

        countryProvider.provideCountry(value);

        textController.clear();
      }
    );
  }
}