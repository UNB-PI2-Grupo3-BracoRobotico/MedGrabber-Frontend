import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:grabber/features/help_center/pages/help_center_page.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';
import 'package:grabber/features/inventory/presentation/blocs/item_management/item_management_cubit.dart';
import 'package:grabber/features/inventory/presentation/blocs/positions_available/positions_available_cubit.dart';
import 'package:grabber/features/inventory/presentation/pages/add_item_page.dart';
import 'package:grabber/features/inventory/presentation/pages/edit_item_page.dart';
import 'package:grabber/features/inventory/presentation/pages/inventory_page.dart';
import 'package:grabber/features/navigation/template_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/base_auth/forgotten_password_bloc/forgotten_password_cubit.dart';
import 'package:grabber/features/on_boarding/presentation/pages/base_auth/login_bloc/login_cubit.dart';
import 'package:grabber/features/on_boarding/presentation/pages/forgotten_password_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/login_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/onboarding_email_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/onboarding_password_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/onboarding_phone_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/onboarding_start_page.dart';
import 'package:grabber/features/on_boarding/presentation/pages/onboarding_token_page.dart';
import 'package:grabber/features/orders/domain/entities/order.dart';
import 'package:grabber/features/orders/presentation/simulate_order_page.dart';
import 'package:grabber/features/orders/presentation/single_order_page.dart';
import 'package:grabber/features/settings/pages/mail_option/blocs/mail_page/mail_page_cubit.dart';
import 'package:grabber/features/settings/pages/mail_option/mail_page.dart';
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
  static Route routeFromSettings(RouteSettings settings) {
    late Widget page;
    AnimationByRoute animation = AnimationByRoute.defaultOption;

    switch (settings.name) {
      case AppRoutes.onBoarding:
        page = const OnBoardingStartPage();
        break;

      case AppRoutes.forgottenPassword:
        page = BlocProvider(
          create: (_) => ForgottenPasswordCubit(
            resetPasswordUsecase: getIt.get(),
          ),
          child: const ForgottenPasswordPage(),
        );
        break;
      case AppRoutes.login:
        page = BlocProvider(
          create: (_) => LoginCubit(
            signIn: getIt.get(),
          ),
          child: const LoginPage(),
        );
        break;
      case AppRoutes.onBoardingToken:
        page = const OnBoardingTokenPage();
        break;
      case AppRoutes.onBoardingEmail:
        page = const OnBoardingEmailPage();
        break;
      case AppRoutes.onBoardingPassword:
        page = const OnBoardingPasswordPage();
        break;
      case AppRoutes.onBoardingPhone:
        page = const OnBoardingPhonePage();
        break;
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
      case AppRoutes.settingsMail:
        page = BlocProvider(
          create: (_) => MailPageCubit(
            updateEmail: getIt.get(),
          ),
          child: const MailPage(),
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
      case AppRoutes.help:
        animation = AnimationByRoute.instant;
        bool navigatedViaNavBar = false;
        if (settings.arguments != null) {
          navigatedViaNavBar = settings.arguments! as bool;
        }
        page = HelpCenter(navigatedViaNavbar: navigatedViaNavBar);
        break;
      case AppRoutes.support:
        page = const SupportPage();
        break;
      case AppRoutes.simulateOrder:
        page = const SimulateOrderPage();
        break;
      case AppRoutes.orderReview:
        if (settings.arguments != null) {
          page = SingleOrderPage(
            order: settings.arguments! as OrderEntity,
          );
        } else {
          throw Exception('Missing arguments');
        }
        break;
      case AppRoutes.dashboard:
        animation = AnimationByRoute.instant;
        page = const DashboardPage();
        break;
      default:
        print('Deu erro');
        throw UnimplementedError();
    }

    return NavigatorHelper.createRoute(
      page,
      animation: animation,
    );
  }
}
