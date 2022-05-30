import 'package:flutter/material.dart';

class AppDescriptionWidget extends StatelessWidget {
  const AppDescriptionWidget({Key? key}) : super(key: key);

  final TextStyle _mainTextStyle = const TextStyle(
    fontSize: 25,
    color: Colors.white,
  );

  final String _appDescription =
      'Swap - приложение (онлайн-сервис) для обмена вещами.\n ';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: _appDescription, style: _mainTextStyle),
          ],
        ),
      ),
    );
  }
}
