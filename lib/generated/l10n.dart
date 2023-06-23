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
      'Continue',
      name: 'continue_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get start_button_label {
    return Intl.message(
      'Get Started',
      name: 'start_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Finish Signup`
  String get finish_on_boarding_button_label {
    return Intl.message(
      'Finish Signup',
      name: 'finish_on_boarding_button_label',
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

  /// `Machine Code`
  String get on_boarding_token_page_title {
    return Intl.message(
      'Machine Code',
      name: 'on_boarding_token_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter the token provided by the development team to connect with the machine.`
  String get on_boarding_token_page_description {
    return Intl.message(
      'Enter the token provided by the development team to connect with the machine.',
      name: 'on_boarding_token_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Code! Please try again`
  String get on_boarding_token_page_error_bottomsheet_title {
    return Intl.message(
      'Invalid Code! Please try again',
      name: 'on_boarding_token_page_error_bottomsheet_title',
      desc: '',
      args: [],
    );
  }

  /// `If the problem persists, contact the development team.`
  String get on_boarding_token_page_error_bottomsheet_description {
    return Intl.message(
      'If the problem persists, contact the development team.',
      name: 'on_boarding_token_page_error_bottomsheet_description',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected Error! Contact the development team to provide a new Code`
  String get on_boarding_token_page_error_page_title {
    return Intl.message(
      'Unexpected Error! Contact the development team to provide a new Code',
      name: 'on_boarding_token_page_error_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Code cannot be null.`
  String get on_boarding_token_page_error_page_description {
    return Intl.message(
      'Code cannot be null.',
      name: 'on_boarding_token_page_error_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Machine Code successfully linked!`
  String get on_boarding_token_page_success_title {
    return Intl.message(
      'Machine Code successfully linked!',
      name: 'on_boarding_token_page_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Linking machine code...`
  String get on_boarding_token_page_loading_title {
    return Intl.message(
      'Linking machine code...',
      name: 'on_boarding_token_page_loading_title',
      desc: '',
      args: [],
    );
  }

  /// `Email:`
  String get on_boarding_email_page_title {
    return Intl.message(
      'Email:',
      name: 'on_boarding_email_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email to proceed with onboarding.`
  String get on_boarding_email_page_description {
    return Intl.message(
      'Enter your email to proceed with onboarding.',
      name: 'on_boarding_email_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Email! Please try again.`
  String get on_boarding_email_page_error_bottomsheet_title {
    return Intl.message(
      'Invalid Email! Please try again.',
      name: 'on_boarding_email_page_error_bottomsheet_title',
      desc: '',
      args: [],
    );
  }

  /// `If the problem persists, please check your email and try again.`
  String get on_boarding_email_page_error_bottomsheet_description {
    return Intl.message(
      'If the problem persists, please check your email and try again.',
      name: 'on_boarding_email_page_error_bottomsheet_description',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected Error! Please try again later or contact support for assistance.`
  String get on_boarding_email_page_error_page_title {
    return Intl.message(
      'Unexpected Error! Please try again later or contact support for assistance.',
      name: 'on_boarding_email_page_error_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Email cannot be empty.`
  String get on_boarding_email_page_error_page_description {
    return Intl.message(
      'Email cannot be empty.',
      name: 'on_boarding_email_page_error_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Email Successfully Added!`
  String get on_boarding_email_page_success_title {
    return Intl.message(
      'Email Successfully Added!',
      name: 'on_boarding_email_page_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Adding email...`
  String get on_boarding_email_page_loading_title {
    return Intl.message(
      'Adding email...',
      name: 'on_boarding_email_page_loading_title',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number:`
  String get on_boarding_phone_page_title {
    return Intl.message(
      'Phone Number:',
      name: 'on_boarding_phone_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number to proceed with onboarding.`
  String get on_boarding_phone_page_description {
    return Intl.message(
      'Enter your phone number to proceed with onboarding.',
      name: 'on_boarding_phone_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Phone Number! Please try again.`
  String get on_boarding_phone_page_error_bottomsheet_title {
    return Intl.message(
      'Invalid Phone Number! Please try again.',
      name: 'on_boarding_phone_page_error_bottomsheet_title',
      desc: '',
      args: [],
    );
  }

  /// `If the problem persists, please check your phone number and try again.`
  String get on_boarding_phone_page_error_bottomsheet_description {
    return Intl.message(
      'If the problem persists, please check your phone number and try again.',
      name: 'on_boarding_phone_page_error_bottomsheet_description',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected Error! Please try again later or contact support for assistance.`
  String get on_boarding_phone_page_error_page_title {
    return Intl.message(
      'Unexpected Error! Please try again later or contact support for assistance.',
      name: 'on_boarding_phone_page_error_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Phone number cannot be empty.`
  String get on_boarding_phone_page_error_page_description {
    return Intl.message(
      'Phone number cannot be empty.',
      name: 'on_boarding_phone_page_error_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number Successfully Added!`
  String get on_boarding_phone_page_success_title {
    return Intl.message(
      'Phone Number Successfully Added!',
      name: 'on_boarding_phone_page_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Adding phone number...`
  String get on_boarding_phone_page_loading_title {
    return Intl.message(
      'Adding phone number...',
      name: 'on_boarding_phone_page_loading_title',
      desc: '',
      args: [],
    );
  }

  /// `Password:`
  String get on_boarding_password_page_title {
    return Intl.message(
      'Password:',
      name: 'on_boarding_password_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password:`
  String get on_boarding_password_confirm_page_title {
    return Intl.message(
      'Confirm Password:',
      name: 'on_boarding_password_confirm_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter a password for your account with at least 8 characters.`
  String get on_boarding_password_page_description {
    return Intl.message(
      'Enter a password for your account with at least 8 characters.',
      name: 'on_boarding_password_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Password! Please try again.`
  String get on_boarding_password_page_error_bottomsheet_title {
    return Intl.message(
      'Invalid Password! Please try again.',
      name: 'on_boarding_password_page_error_bottomsheet_title',
      desc: '',
      args: [],
    );
  }

  /// `If the problem persists, please check your password and try again.`
  String get on_boarding_password_page_error_bottomsheet_description {
    return Intl.message(
      'If the problem persists, please check your password and try again.',
      name: 'on_boarding_password_page_error_bottomsheet_description',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected Error! Please try again later or contact support for assistance.`
  String get on_boarding_password_page_error_page_title {
    return Intl.message(
      'Unexpected Error! Please try again later or contact support for assistance.',
      name: 'on_boarding_password_page_error_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Password cannot be empty.`
  String get on_boarding_password_page_error_page_description {
    return Intl.message(
      'Password cannot be empty.',
      name: 'on_boarding_password_page_error_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Password Successfully Set!`
  String get on_boarding_password_page_success_title {
    return Intl.message(
      'Password Successfully Set!',
      name: 'on_boarding_password_page_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Setting password...`
  String get on_boarding_password_page_loading_title {
    return Intl.message(
      'Setting password...',
      name: 'on_boarding_password_page_loading_title',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Grabber`
  String get on_boarding_initial_title {
    return Intl.message(
      'Welcome to Grabber',
      name: 'on_boarding_initial_title',
      desc: '',
      args: [],
    );
  }

  /// `For your first interaction with our product, we need you to complete the initial setup to link it with the Garra system.\n\nOn behalf of the Grabber team, we thank you for choosing us.`
  String get on_boarding_description_title {
    return Intl.message(
      'For your first interaction with our product, we need you to complete the initial setup to link it with the Garra system.\n\nOn behalf of the Grabber team, we thank you for choosing us.',
      name: 'on_boarding_description_title',
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
