import 'package:flutter/material.dart';
import 'package:ws_swap/themes/custom_colors.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  State<LogoWidget> createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  final TextStyle _logoTextStyle = const TextStyle(
    //TODO вынести style куда-нибудь
    fontSize: 100,
    color: CustomColors.secondaryColor,
  );

  late List<double?> _logoPaddings;

  late double screenWidth;

  bool _reverse = false;

  bool built = false;

  void _changeLogo() {
    setState(() {
      _reverse = _reverse ? false : true;
      _logoPaddings = _reverse
          ? [screenWidth / 2, screenWidth / 2 - 110]
          : [screenWidth / 2 - 135, screenWidth / 2];
    });
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    if (!built) {
      _logoPaddings = [screenWidth / 2 - 135, screenWidth / 2];
      built = true;
    }
    return GestureDetector(
      onTap: _changeLogo,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          height: 120,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              AnimatedPositioned(
                left: _logoPaddings[0],
                duration: const Duration(milliseconds: 500),
                child: Text('Sw', style: _logoTextStyle),
              ),
              AnimatedPositioned(
                left: _logoPaddings[1],
                duration: const Duration(milliseconds: 500),
                child: Text('ap', style: _logoTextStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
