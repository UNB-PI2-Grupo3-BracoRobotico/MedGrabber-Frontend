// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Continue`
  String get continue_button_label {
    return Intl.message(
      'Continuar',
      name: 'continue_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get start_button_label {
    return Intl.message(
      'Iniciar',
      name: 'continue_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get try_again {
    return Intl.message(
      'Try again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  String get onboarding_initial_tile {
    return Intl.message(
      'Bem vindo ao Grabber',
      name: 'onboarding_initial_tile ',
      desc: '',
      args: [],
    );
  }

  String get onboarding_description_tile {
    return Intl.message(
      'Para seu primeiro contato com nosso produto precisamos que você faça as configurações iniciais para vincular com o sistema da Garra.\n\nEm nome da equipe do Grabber agradecemos pela preferência.',
      name: 'onboarding_description_tile ',
      desc: '',
      args: [],
    );
  }

  /// `token`
  String get token_page_title {
    return Intl.message(
      'Código da máquina',
      name: 'token_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Token connected!`
  String get token_page_success_title {
    return Intl.message(
      'Token conectado com braço!',
      name: 'token_page_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Updating your token...`
  String get token_page_loading_title {
    return Intl.message(
      'Conectando com a máquina...',
      name: 'token_page_loading_title',
      desc: '',
      args: [],
    );
  }

  /// `Updating your store's name...`
  String get onboarding_token_validating_title {
    return Intl.message(
      'Validating your token connection',
      name: 'onboarding_loading_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Got it`
  String get got_it {
    return Intl.message(
      'Got it',
      name: 'got_it',
      desc: '',
      args: [],
    );
  }

  /// `Setting up your machine...`
  String get setup_machine_loading_title {
    return Intl.message(
      'Setting up your machine...',
      name: 'setup_machine_loading_title',
      desc: '',
      args: [],
    );
  }

  /// `Arm configurated!`
  String get setup_machine_success_title {
    return Intl.message(
      'Arm configurated!',
      name: 'setup_machine_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get setup_machine_error_title {
    return Intl.message(
      'Something went wrong',
      name: 'setup_machine_error_title',
      desc: '',
      args: [],
    );
  }

  /// `It was not possible to set up your machine.\nTry again, if the error persists\ncontact our team.`
  String get setup_machine_error_description {
    return Intl.message(
      'It was not possible to set up your machine.\nTry again, if the error persists\ncontact our team.',
      name: 'setup_machine_error_description',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings_title {
    return Intl.message(
      'Settings',
      name: 'settings_title',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get settings_name_option_title {
    return Intl.message(
      'Name',
      name: 'settings_name_option_title',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get settings_phone_option_title {
    return Intl.message(
      'Phone',
      name: 'settings_phone_option_title',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get settings_address_option_title {
    return Intl.message(
      'Address',
      name: 'settings_address_option_title',
      desc: '',
      args: [],
    );
  }

  /// `Store's Name`
  String get name_page_title {
    return Intl.message(
      'Store\'s Name',
      name: 'name_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Modify your store's name so that clients can see the updated name.\nYour name must follow these <bold>rules:\n• Cannot start with numbers\n• Must be at max 25 characters long</bold>`
  String get name_page_description {
    return Intl.message(
      'Modify your store\'s name so that clients can see the updated name.\nYour name must follow these <bold>rules:\n• Cannot start with numbers\n• Must be at max 25 characters long</bold>',
      name: 'name_page_description',
      desc: '',
      args: [],
    );
  }

  /// `The store name cannot start with number`
  String get name_page_field_error_cannot_start_with_number {
    return Intl.message(
      'The store name cannot start with number',
      name: 'name_page_field_error_cannot_start_with_number',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get name_error_page_title {
    return Intl.message(
      'Something went wrong',
      name: 'name_error_page_title',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't update your store's name.\nPlease try again or change the inserted name.`
  String get name_error_page_description {
    return Intl.message(
      'We couldn\'t update your store\'s name.\nPlease try again or change the inserted name.',
      name: 'name_error_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get name_error_page_primary_button_label {
    return Intl.message(
      'Try again',
      name: 'name_error_page_primary_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Change name`
  String get name_error_page_secondary_button_label {
    return Intl.message(
      'Change name',
      name: 'name_error_page_secondary_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Updating your store's name...`
  String get name_loading_page_title {
    return Intl.message(
      'Updating your store\'s name...',
      name: 'name_loading_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Store name updated!`
  String get name_success_page_title {
    return Intl.message(
      'Store name updated!',
      name: 'name_success_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_page_title {
    return Intl.message(
      'Phone Number',
      name: 'phone_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Modify the number of your store to keep clients informed during their purchases.`
  String get phone_page_description {
    return Intl.message(
      'Modify the number of your store to keep clients informed during their purchases.',
      name: 'phone_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Invalid number`
  String get phone_page_error_bottomsheet_title {
    return Intl.message(
      'Invalid number',
      name: 'phone_page_error_bottomsheet_title',
      desc: '',
      args: [],
    );
  }

  /// `Please recheck the phone number you inserted.\nJust to remember the phone number must be from Brazil.`
  String get phone_page_error_bottomsheet_description {
    return Intl.message(
      'Please recheck the phone number you inserted.\nJust to remember the phone number must be from Brazil.',
      name: 'phone_page_error_bottomsheet_description',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get phone_page_error_page_title {
    return Intl.message(
      'Something went wrong',
      name: 'phone_page_error_page_title',
      desc: '',
      args: [],
    );
  }

  /// `It wasn't possible to update your phone number.\nTry again, if the error persists, contact our team.`
  String get phone_page_error_page_description {
    return Intl.message(
      'It wasn\'t possible to update your phone number.\nTry again, if the error persists, contact our team.',
      name: 'phone_page_error_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Phone number updated!`
  String get phone_page_success_title {
    return Intl.message(
      'Phone number updated!',
      name: 'phone_page_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Updating your phone number...`
  String get phone_page_loading_title {
    return Intl.message(
      'Updating your phone number...',
      name: 'phone_page_loading_title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
