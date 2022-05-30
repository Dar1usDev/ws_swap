import 'package:flutter/material.dart';

import 'routes/info_page/InfoPage.dart';
import 'themes/CustomTheme.dart';

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
