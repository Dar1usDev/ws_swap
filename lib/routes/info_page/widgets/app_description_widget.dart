import 'package:flutter/material.dart';
import 'package:ws_swap/themes/custom_colors.dart';

class AppDescriptionWidget extends StatelessWidget {
  const AppDescriptionWidget({Key? key}) : super(key: key);

  final TextStyle _mainTextStyle = const TextStyle(
    //TODO вынести style
    fontSize: 25,
    color: CustomColors.lightColor,
  );

  final TextStyle _nameTextStyle = const TextStyle(
    //TODO вынести style
    fontSize: 25,
    color: CustomColors.secondaryColor,
  );

  final TextStyle _noteTextStyle = const TextStyle(
    //TODO вынести style
    fontSize: 17,
    color: CustomColors.lightColor,
  );

  final String _appDescription =
      ' - онлайн сервис для обмена вещами (авито без денег).\n'
      'Основные возможности:\n'
      ' - регистрация пользователя;\n'
      ' - просмотр и фильтрация всех предложений обмена;\n'
      ' - просмотр ближайших предложений на карте;\n'
      ' - еще что-нибудь придумаю.\n';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '  Swap',
              style: _nameTextStyle,
            ),
            TextSpan(
              text: _appDescription,
              style: _mainTextStyle,
            ),
            TextSpan(
              text: '\n(Лого кликабельное, цветовую схему потом подредактирую)',
              style: _noteTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
