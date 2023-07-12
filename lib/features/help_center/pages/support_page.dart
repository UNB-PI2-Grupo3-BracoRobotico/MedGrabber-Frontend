import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_tawk/flutter_tawk.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/on_boarding/presentation/blocs/session_manager/session_manager_cubit.dart';

import '../../../generated/l10n.dart';
import '../../shared/base_loading_page.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionManagerCubit, SessionManagerState>(
      bloc: getIt.get(),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: BaseLoadingPage.new,
          authenticated: (user) => Scaffold(
            appBar: AppBar(
              backgroundColor: kPrimary,
              leading: DSIconButton(
                icon: const DSIcon(
                  icon: Icons.chevron_left_rounded,
                ),
                onTap: Navigator.of(context).pop,
              ),
            ),
            body: SafeArea(
              child: Tawk(
                directChatLink:
                    'https://tawk.to/chat/6498d81d94cf5d49dc5fcb73/1h3qgocv6',
                visitor: TawkVisitor(
                  name: user.storeName,
                  email: user.email,
                ),
                placeholder: BaseLoadingPage(
                  title: S.current.supported_page_loading_tiltle,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
