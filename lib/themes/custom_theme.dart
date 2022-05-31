import 'package:flutter/material.dart';
import 'package:ws_swap/themes/custom_colors.dart';

/// App theme
class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: CustomColors.primaryColor,
      scaffoldBackgroundColor: CustomColors.primaryColor,
      fontFamily: 'Montserrat',
      textTheme: ThemeData.dark().textTheme,
      appBarTheme: const AppBarTheme(
        color: CustomColors.accentColor,
        foregroundColor: CustomColors.primaryColor,
      ),
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: CustomColors.accentColor,
      ),
    );
  }

//TODO Светлая тема
// static ThemeData get lightTheme {
//   return ThemeData(
//       primaryColor: Colors.orange,
//       scaffoldBackgroundColor: Colors.white,
//       fontFamily: 'Montserrat',
//       buttonTheme: ButtonThemeData(
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
//         buttonColor: Colors.orange.shade300,
//       ));
// }
}
