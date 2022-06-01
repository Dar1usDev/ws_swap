import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ws_swap/themes/custom_colors.dart';

const String _githubLink = 'https://github.com/Dar1usDev/ws_swap.git';
final Uri _url =
    Uri.parse(_githubLink); //TODO а можно вне класса писать...?????

class GithubLinkWidget extends StatelessWidget {
  const GithubLinkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_github.png',
              width: 30,
              height: 30,
              color: CustomColors.lightColor,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: TextButton(
                onPressed: _launchUrl,
                child: const Text(
                  _githubLink,
                  textAlign: TextAlign.justify,
                  //maxLines: 1,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            //TODO у GestureDetector не работает onTap
            // GestureDetector(
            //   onTap: _launchUrl,
            //   child: const SelectableText(
            //     _githubLink,
            //     style: TextStyle(fontSize: 16),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }
}
