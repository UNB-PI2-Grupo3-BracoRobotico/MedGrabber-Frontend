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
          //TODO add Real user information
          visitor: TawkVisitor(
            name: 'john Doe',
            email: 'johndoe@gmail.com',
          ),
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