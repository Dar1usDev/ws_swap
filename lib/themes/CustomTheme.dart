import 'package:flutter/material.dart';

import 'CustomColors.dart';

/// App theme
class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
        fontFamily: 'Montserrat',
        textTheme: ThemeData.dark().textTheme,
        appBarTheme: const AppBarTheme(
            color: accentColor, foregroundColor: primaryColor),
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: accentColor,
        ));
  }

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
