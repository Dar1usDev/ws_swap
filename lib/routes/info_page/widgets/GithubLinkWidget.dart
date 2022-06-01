import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String _githubLink = 'https://github.com/Dar1usDev/ws_swap.git';
final Uri _url =
    Uri.parse(_githubLink); //TODO а можно все класса писать...?????

class GithubLinkWidget extends StatelessWidget {
  const GithubLinkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icon_github.png',
          width: 30,
          height: 30,
          color: Colors.white,
        ),
        Container(
          width: 5,
        ),
        TextButton(
          onPressed: _launchUrl,
          child: const SelectableText(
            _githubLink,
            style: TextStyle(fontSize: 15),
          ),
        ),
        // у варианта ниже работает onTap
        // GestureDetector(
        //   onTap: _launchUrl,
        //   child: const SelectableText(
        //     _githubLink,
        //     style: TextStyle(fontSize: 16),
        //   ),
        // ),
      ],
    );
  }

  void _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }
}
