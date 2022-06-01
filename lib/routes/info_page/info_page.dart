import 'package:flutter/material.dart';
import 'package:ws_swap/routes/info_page/widgets/app_description_widget.dart';

import 'package:ws_swap/routes/info_page/widgets/github_link_widget.dart';
import 'package:ws_swap/routes/info_page/widgets/logo_widget.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const [
          LogoWidget(),
          AppDescriptionWidget(),
          GithubLinkWidget(),
        ],
      ),
    );
  }
}
