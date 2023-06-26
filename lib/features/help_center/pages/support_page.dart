import 'package:flutter/material.dart';

import 'package:flutter_tawk/flutter_tawk.dart';

import '../../../generated/l10n.dart';
import '../../shared/base_loading_page.dart';


class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Tawk(
          directChatLink: 'https://tawk.to/chat/6498d81d94cf5d49dc5fcb73/1h3qgocv6',
          visitor: TawkVisitor(
            name: 'Ayoub AMINE',
            email: 'ayoubamine2a@gmail.com',
          ),
          onLoad: () {
            print('Hello Tawk!');
          },
          onLinkTap: (String url) {
            print(url);
          },
          placeholder: Center(
            child: BaseLoadingPage(
              title: S.current.supported_page_loading_tiltle,
            ),
          ),
        ),
      ),
    );
  }
}