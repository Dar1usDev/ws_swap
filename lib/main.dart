import 'package:flutter/material.dart';
import 'package:ws_swap/routes/info_page/info_page.dart';
import 'package:ws_swap/themes/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swap',
      theme: CustomTheme.darkTheme,
      home: const InfoPage(title: 'About'),
    );
  }
}
