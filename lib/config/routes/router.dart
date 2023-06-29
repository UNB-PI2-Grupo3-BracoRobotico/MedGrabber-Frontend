import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/help_center/pages/help_center_page.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';
import 'package:grabber/features/inventory/presentation/blocs/item_management/item_management_cubit.dart';
import 'package:grabber/features/inventory/presentation/blocs/positions_available/positions_available_cubit.dart';
import 'package:grabber/features/inventory/presentation/pages/add_item_page.dart';
import 'package:grabber/features/inventory/presentation/pages/edit_item_page.dart';
import 'package:grabber/features/inventory/presentation/pages/inventory_page.dart';
import 'package:grabber/features/navigation/template_page.dart';
import 'package:grabber/features/settings/pages/name_option/name_page.dart';
import 'package:grabber/features/settings/pages/phone_option/blocs/update_phone_cubit/update_phone_cubit.dart';
import 'package:grabber/features/settings/pages/settings_page.dart';
import 'package:grabber/features/setup_machine/presentation/blocs/setup_status/setup_status_bloc.dart';
import 'package:grabber/features/setup_machine/presentation/pages/step_final.dart';

import '../../features/help_center/pages/support_page.dart';
import '../../features/home/presentation/home_page.dart';
import '../../features/settings/pages/name_option/blocs/name_page/name_page_cubit.dart';
import '../../features/settings/pages/phone_option/phone_page.dart';
import '../../features/setup_machine/presentation/pages/step_1.dart';
import '../../features/setup_machine/presentation/pages/step_2.dart';
import 'navigator_helper.dart';

abstract class AppRouter {
  static Map<String, Widget Function(BuildContext)> mapRoutes() {
    return {
      AppRoutes.setup1: (_) => const Step1(),
      AppRoutes.setup2: (_) => const Step2(),
      AppRoutes.support: (_) => const SupportPage(),
      AppRoutes.setupFinal: (_) => BlocProvider(
            create: (_) => SetupStatusBloc(),
            child: const StepFinal(),
          ),
      AppRoutes.home: (_) => const HomePage(),
      AppRoutes.settings: (_) => const SettingsPage(),
      AppRoutes.settingsName: (_) => BlocProvider(
            create: (_) => NamePageCubit(
              updateStoreName: getIt.get(),
            ),
            child: const NamePage(),
          ),
      AppRoutes.settingsPhone: (_) => BlocProvider(
            create: (_) => UpdatePhoneCubit(
              updatePhoneNumber: getIt.get(),
            ),
            child: const PhonePage(),
          ),
      AppRoutes.notifications: (_) {
        //TODO(Mauricio): Implement route
        throw UnimplementedError();
      },
      AppRoutes.dashboard: (_) {
        //TODO(Mauricio): Implement route
        throw UnimplementedError();
      },
      AppRoutes.help: (_) => const HelpCenter(),
    };
  }

  static Route routeFromSettings(RouteSettings settings) {
    late Widget page;
    AnimationByRoute animation = AnimationByRoute.defaultOption;

    switch (settings.name) {
      case AppRoutes.initial:
        page = const TemplatePage();
        break;
      case AppRoutes.setup1:
        page = const Step1();
        break;
      case AppRoutes.setup2:
        page = const Step2();
        break;
      case AppRoutes.setupFinal:
        page = BlocProvider(
          create: (_) => SetupStatusBloc(),
          child: const StepFinal(),
        );
        break;
      case AppRoutes.home:
        animation = AnimationByRoute.instant;
        page = const HomePage();
        break;
      case AppRoutes.settings:
        animation = AnimationByRoute.instant;
        page = const SettingsPage();
        break;
      case AppRoutes.settingsName:
        page = BlocProvider(
          create: (_) => NamePageCubit(
            updateStoreName: getIt.get(),
          ),
          child: const NamePage(),
        );
        break;
      case AppRoutes.settingsPhone:
        page = BlocProvider(
          create: (_) => UpdatePhoneCubit(
            updatePhoneNumber: getIt.get(),
          ),
          child: const PhonePage(),
        );
        break;
      case AppRoutes.inventory:
        page = const InventoryPage();
        break;
      case AppRoutes.addItem:
        page = MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => ItemManagementCubit(),
            ),
            BlocProvider(
              create: (_) =>
                  PositionsAvailableCubit()..checkAvailablePositions(),
            ),
          ],
          child: const AddItemPage(),
        );
        break;
      case AppRoutes.editItem:
        if (settings.arguments == null) {
          throw Exception('Missing arguments');
        }

        page = MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => ItemManagementCubit(),
            ),
            BlocProvider(
              create: (_) =>
                  PositionsAvailableCubit()..checkAvailablePositions(),
            ),
          ],
          child: EditItemPage(
            product: settings.arguments! as Product,
          ),
        );
        break;
      case AppRoutes.notifications:
      case AppRoutes.dashboard:
      case AppRoutes.help:
        animation = AnimationByRoute.instant;
        page = const HelpCenter();
        break;
      case AppRoutes.support:
        page = const SupportPage();
        break;
      default:
        throw UnimplementedError();
    }

    return NavigatorHelper.createRoute(
      page,
      animation: animation,
    );
  }
}
