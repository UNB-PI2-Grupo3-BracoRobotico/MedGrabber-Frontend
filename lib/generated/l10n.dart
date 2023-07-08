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

  /// `Login`
  String get login_button_label {
    return Intl.message(
      'Login',
      name: 'login_button_label',
      desc: '',
      args: [],
    );
  }

  /// `I've already had an account`
  String get go_to_login_page_button_label {
    return Intl.message(
      'I\'ve already had an account',
      name: 'go_to_login_page_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Login failed!`
  String get login_error_title {
    return Intl.message(
      'Login failed!',
      name: 'login_error_title',
      desc: '',
      args: [],
    );
  }

  /// `Unable to login! Incorrect e-mail address or password.`
  String get login_error_description {
    return Intl.message(
      'Unable to login! Incorrect e-mail address or password.',
      name: 'login_error_description',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect e-mail format!`
  String get login_email_pattern_error_description {
    return Intl.message(
      'Incorrect e-mail format!',
      name: 'login_email_pattern_error_description',
      desc: '',
      args: [],
    );
  }

  /// `You are being redirected to the home screen...`
  String get login_success_message {
    return Intl.message(
      'You are being redirected to the home screen...',
      name: 'login_success_message',
      desc: '',
      args: [],
    );
  }

  /// `Forgotten password?`
  String get forgotten_password_message {
    return Intl.message(
      'Forgotten password?',
      name: 'forgotten_password_message',
      desc: '',
      args: [],
    );
  }

  /// `Forgotten password`
  String get forgotten_password_title {
    return Intl.message(
      'Forgotten password',
      name: 'forgotten_password_title',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get forgotten_password_button_label {
    return Intl.message(
      'Reset password',
      name: 'forgotten_password_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Email sent successfully!`
  String get forgotten_password_email_sended_title {
    return Intl.message(
      'Email sent successfully!',
      name: 'forgotten_password_email_sended_title',
      desc: '',
      args: [],
    );
  }

  /// `Please check your inbox for password reset instructions.`
  String get forgotten_password_email_sended_message {
    return Intl.message(
      'Please check your inbox for password reset instructions.',
      name: 'forgotten_password_email_sended_message',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and we will send you a password reset link`
  String get forgotten_password_desc {
    return Intl.message(
      'Enter your email and we will send you a password reset link',
      name: 'forgotten_password_desc',
      desc: '',
      args: [],
    );
  }

  /// `Email Not founded!`
  String get forgotten_password_email_not_found {
    return Intl.message(
      'Email Not founded!',
      name: 'forgotten_password_email_not_found',
      desc: '',
      args: [],
    );
  }

  /// `We did not find an account linked to this email address in our database`
  String get forgotten_password_error_page_description {
    return Intl.message(
      'We did not find an account linked to this email address in our database',
      name: 'forgotten_password_error_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Checking your email...`
  String get email_page_loading_title {
    return Intl.message(
      'Checking your email...',
      name: 'email_page_loading_title',
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

  /// `Register user`
  String get register_user_button_label {
    return Intl.message(
      'Register user',
      name: 'register_user_button_label',
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

  /// `Something went wrong`
  String get something_went_wrong {
    return Intl.message(
      'Something went wrong',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get bottom_navigation_settings_option {
    return Intl.message(
      'Settings',
      name: 'bottom_navigation_settings_option',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get bottom_navigation_help_option {
    return Intl.message(
      'Help',
      name: 'bottom_navigation_help_option',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get bottom_navigation_home_option {
    return Intl.message(
      'Home',
      name: 'bottom_navigation_home_option',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get bottom_navigation_dashboard_option {
    return Intl.message(
      'Dashboard',
      name: 'bottom_navigation_dashboard_option',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get bottom_navigation_notifications_option {
    return Intl.message(
      'Notifications',
      name: 'bottom_navigation_notifications_option',
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

  /// `Email`
  String get settings_email_option_title {
    return Intl.message(
      'Email',
      name: 'settings_email_option_title',
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

  /// `Aguarde um momento enquanto conectamos você ao nosso suporte...`
  String get supported_page_loading_tiltle {
    return Intl.message(
      'Aguarde um momento enquanto conectamos você ao nosso suporte...',
      name: 'supported_page_loading_tiltle',
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

  /// `Email is already registered or has an incorrect format!`
  String get on_boarding_email_page_error_bottomsheet_description {
    return Intl.message(
      'Email is already registered or has an incorrect format!',
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

  /// `Passwords are not the same or have fewer than 8 characters.`
  String get on_boarding_password_page_error_bottomsheet_description {
    return Intl.message(
      'Passwords are not the same or have fewer than 8 characters.',
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

  /// `Invalid Token`
  String get default_invalid_token_label {
    return Intl.message(
      'Invalid Token',
      name: 'default_invalid_token_label',
      desc: '',
      args: [],
    );
  }

  /// `Sign up error! `
  String get default_invalid_signup_title {
    return Intl.message(
      'Sign up error! ',
      name: 'default_invalid_signup_title',
      desc: '',
      args: [],
    );
  }

  /// `Pleas try again! If error persist, contact our team.`
  String get default_invalid_signup_description {
    return Intl.message(
      'Pleas try again! If error persist, contact our team.',
      name: 'default_invalid_signup_description',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get empty_string {
    return Intl.message(
      '',
      name: 'empty_string',
      desc: '',
      args: [],
    );
  }

  /// `Welcome {name}`
  String home_page_welcome_again_title(Object name) {
    return Intl.message(
      'Welcome $name',
      name: 'home_page_welcome_again_title',
      desc: '',
      args: [name],
    );
  }

  /// `Manage inventory`
  String get home_page_manage_inventory_button_label {
    return Intl.message(
      'Manage inventory',
      name: 'home_page_manage_inventory_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get mail_page_title {
    return Intl.message(
      'Email address',
      name: 'mail_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Modify the email to keep clients informed during their purchases.`
  String get mail_page_description {
    return Intl.message(
      'Modify the email to keep clients informed during their purchases.',
      name: 'mail_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address`
  String get mail_page_field_error {
    return Intl.message(
      'Invalid email address',
      name: 'mail_page_field_error',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get mail_error_page_title {
    return Intl.message(
      'Something went wrong',
      name: 'mail_error_page_title',
      desc: '',
      args: [],
    );
  }

  /// `It wasn't possible to update your email.\nTry again, if the error persists, contact our team.`
  String get mail_error_page_description {
    return Intl.message(
      'It wasn\'t possible to update your email.\nTry again, if the error persists, contact our team.',
      name: 'mail_error_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get mail_error_page_primary_button_label {
    return Intl.message(
      'Try again',
      name: 'mail_error_page_primary_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Change email`
  String get mail_error_page_secondary_button_label {
    return Intl.message(
      'Change email',
      name: 'mail_error_page_secondary_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Updating mail...`
  String get mail_loading_page_title {
    return Intl.message(
      'Updating mail...',
      name: 'mail_loading_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Email updated!`
  String get mail_success_page_title {
    return Intl.message(
      'Email updated!',
      name: 'mail_success_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Help Center`
  String get help_title {
    return Intl.message(
      'Help Center',
      name: 'help_title',
      desc: '',
      args: [],
    );
  }

  /// `How can we help?`
  String get help_page_help_message {
    return Intl.message(
      'How can we help?',
      name: 'help_page_help_message',
      desc: '',
      args: [],
    );
  }

  /// `Initiate Real Time Chat!`
  String get help_page_buttom_label {
    return Intl.message(
      'Initiate Real Time Chat!',
      name: 'help_page_buttom_label',
      desc: '',
      args: [],
    );
  }

  /// `Send Email to:`
  String get help_page_send_email {
    return Intl.message(
      'Send Email to:',
      name: 'help_page_send_email',
      desc: '',
      args: [],
    );
  }

  /// `MedGrabber@gmail.com`
  String get help_email_contact {
    return Intl.message(
      'MedGrabber@gmail.com',
      name: 'help_email_contact',
      desc: '',
      args: [],
    );
  }

  /// `Inventory`
  String get inventory_page_title {
    return Intl.message(
      'Inventory',
      name: 'inventory_page_title',
      desc: '',
      args: [],
    );
  }

  /// `It seems like you haven'y registered any item yet. Register now and start managing your business the best way possible!`
  String get inventory_page_no_item_registered_description {
    return Intl.message(
      'It seems like you haven\'y registered any item yet. Register now and start managing your business the best way possible!',
      name: 'inventory_page_no_item_registered_description',
      desc: '',
      args: [],
    );
  }

  /// `Add item`
  String get inventory_page_no_item_registered_button_labek {
    return Intl.message(
      'Add item',
      name: 'inventory_page_no_item_registered_button_labek',
      desc: '',
      args: [],
    );
  }

  /// `Amount available: {amount}`
  String inventory_amount_card_information(Object amount) {
    return Intl.message(
      'Amount available: $amount',
      name: 'inventory_amount_card_information',
      desc: '',
      args: [amount],
    );
  }

  /// `Something went wrong`
  String get inventory_error_page_title {
    return Intl.message(
      'Something went wrong',
      name: 'inventory_error_page_title',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't load your store itens.\nPlease try again or contact the suport team.`
  String get inventory_error_page_description {
    return Intl.message(
      'We couldn\'t load your store itens.\nPlease try again or contact the suport team.',
      name: 'inventory_error_page_description',
      desc: '',
      args: [],
    );
  }

  /// `Loading your inventory...`
  String get inventory_page_loading {
    return Intl.message(
      'Loading your inventory...',
      name: 'inventory_page_loading',
      desc: '',
      args: [],
    );
  }

  /// `Add Item`
  String get add_item_page_title {
    return Intl.message(
      'Add Item',
      name: 'add_item_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Position`
  String get add_item_position_option_label {
    return Intl.message(
      'Position',
      name: 'add_item_position_option_label',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get add_item_name_option_label {
    return Intl.message(
      'Name',
      name: 'add_item_name_option_label',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get add_item_amount_option_label {
    return Intl.message(
      'Amount',
      name: 'add_item_amount_option_label',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get add_item_description_option_label {
    return Intl.message(
      'Description',
      name: 'add_item_description_option_label',
      desc: '',
      args: [],
    );
  }

  /// `Adicionar`
  String get add_item_button_label {
    return Intl.message(
      'Adicionar',
      name: 'add_item_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Item created!`
  String get add_item_success_title {
    return Intl.message(
      'Item created!',
      name: 'add_item_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Creating item...`
  String get add_item_loading_title {
    return Intl.message(
      'Creating item...',
      name: 'add_item_loading_title',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't create your item.\nPlease try again or contact the suport team.`
  String get add_item_generic_error_description {
    return Intl.message(
      'We couldn\'t create your item.\nPlease try again or contact the suport team.',
      name: 'add_item_generic_error_description',
      desc: '',
      args: [],
    );
  }

  /// `Position cannot be empty`
  String get product_position_cannot_be_empty_error_text {
    return Intl.message(
      'Position cannot be empty',
      name: 'product_position_cannot_be_empty_error_text',
      desc: '',
      args: [],
    );
  }

  /// `Name cannot be empty`
  String get product_name_cannot_be_empty_error_text {
    return Intl.message(
      'Name cannot be empty',
      name: 'product_name_cannot_be_empty_error_text',
      desc: '',
      args: [],
    );
  }

  /// `Amount cannot be empty`
  String get product_amount_cannot_be_empty_error_text {
    return Intl.message(
      'Amount cannot be empty',
      name: 'product_amount_cannot_be_empty_error_text',
      desc: '',
      args: [],
    );
  }

  /// `Description cannot be empty`
  String get product_description_cannot_be_empty_error_text {
    return Intl.message(
      'Description cannot be empty',
      name: 'product_description_cannot_be_empty_error_text',
      desc: '',
      args: [],
    );
  }

  /// `Edit item`
  String get edit_item_page_title {
    return Intl.message(
      'Edit item',
      name: 'edit_item_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Editing item`
  String get edit_item_loading_title {
    return Intl.message(
      'Editing item',
      name: 'edit_item_loading_title',
      desc: '',
      args: [],
    );
  }

  /// `Item edited!`
  String get edit_item_success_title {
    return Intl.message(
      'Item edited!',
      name: 'edit_item_success_title',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't edit your item.\nPlease try again or contact the suport team.`
  String get edit_item_generic_error_description {
    return Intl.message(
      'We couldn\'t edit your item.\nPlease try again or contact the suport team.',
      name: 'edit_item_generic_error_description',
      desc: '',
      args: [],
    );
  }

  /// `Position`
  String get edit_item_position_option_label {
    return Intl.message(
      'Position',
      name: 'edit_item_position_option_label',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get edit_item_name_option_label {
    return Intl.message(
      'Name',
      name: 'edit_item_name_option_label',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get edit_item_amount_option_label {
    return Intl.message(
      'Amount',
      name: 'edit_item_amount_option_label',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get edit_item_description_option_label {
    return Intl.message(
      'Description',
      name: 'edit_item_description_option_label',
      desc: '',
      args: [],
    );
  }

  /// `Save changes`
  String get edit_item_button_label {
    return Intl.message(
      'Save changes',
      name: 'edit_item_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Error loading available positions. <bold>Click here</bold> to try to load again.`
  String get positions_option_button_error {
    return Intl.message(
      'Error loading available positions. <bold>Click here</bold> to try to load again.',
      name: 'positions_option_button_error',
      desc: '',
      args: [],
    );
  }

  /// `Error, tap here`
  String get informational_card_error_message {
    return Intl.message(
      'Error, tap here',
      name: 'informational_card_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Positions available`
  String get home_available_positions_card {
    return Intl.message(
      'Positions available',
      name: 'home_available_positions_card',
      desc: '',
      args: [],
    );
  }

  /// `Items ending`
  String get home_available_itens_card {
    return Intl.message(
      'Items ending',
      name: 'home_available_itens_card',
      desc: '',
      args: [],
    );
  }

  /// `#{id}`
  String order_id(Object id) {
    return Intl.message(
      '#$id',
      name: 'order_id',
      desc: '',
      args: [id],
    );
  }

  /// `Status - {status}`
  String order_status(Object status) {
    return Intl.message(
      'Status - $status',
      name: 'order_status',
      desc: '',
      args: [status],
    );
  }

  /// `Awaiting payment`
  String get order_status_awaiting_payment {
    return Intl.message(
      'Awaiting payment',
      name: 'order_status_awaiting_payment',
      desc: '',
      args: [],
    );
  }

  /// `Processing`
  String get order_status_processing {
    return Intl.message(
      'Processing',
      name: 'order_status_processing',
      desc: '',
      args: [],
    );
  }

  /// `Ready to take out`
  String get order_status_ready_to_get {
    return Intl.message(
      'Ready to take out',
      name: 'order_status_ready_to_get',
      desc: '',
      args: [],
    );
  }

  /// `Finished`
  String get order_status_finished {
    return Intl.message(
      'Finished',
      name: 'order_status_finished',
      desc: '',
      args: [],
    );
  }

  /// `Total value - {value} BRLC`
  String order_value(Object value) {
    return Intl.message(
      'Total value - $value BRLC',
      name: 'order_value',
      desc: '',
      args: [value],
    );
  }

  /// `Verify items`
  String get order_check_itens_button_label {
    return Intl.message(
      'Verify items',
      name: 'order_check_itens_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Order #{id}`
  String order_page_title(Object id) {
    return Intl.message(
      'Order #$id',
      name: 'order_page_title',
      desc: '',
      args: [id],
    );
  }

  /// `Price of product - {price} BRLC`
  String order_product_card_single_product_value(Object price) {
    return Intl.message(
      'Price of product - $price BRLC',
      name: 'order_product_card_single_product_value',
      desc: '',
      args: [price],
    );
  }

  /// `Valor total - {value} BRLC`
  String order_product_card_total_value(Object value) {
    return Intl.message(
      'Valor total - $value BRLC',
      name: 'order_product_card_total_value',
      desc: '',
      args: [value],
    );
  }

  /// `Amount bought - {amount}`
  String order_product_amount_bought(Object amount) {
    return Intl.message(
      'Amount bought - $amount',
      name: 'order_product_amount_bought',
      desc: '',
      args: [amount],
    );
  }

  /// `Orders`
  String get home_order_section_title {
    return Intl.message(
      'Orders',
      name: 'home_order_section_title',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. We couldn't load in progress orders, try again or contact our support team.`
  String get home_order_section_error_description {
    return Intl.message(
      'Something went wrong. We couldn\'t load in progress orders, try again or contact our support team.',
      name: 'home_order_section_error_description',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get home_order_section_error_button_label {
    return Intl.message(
      'Try again',
      name: 'home_order_section_error_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Orders history`
  String get home_order_section_loaded_button_label {
    return Intl.message(
      'Orders history',
      name: 'home_order_section_loaded_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Orders in progress`
  String get home_order_section_loaded_orders_in_progress_title {
    return Intl.message(
      'Orders in progress',
      name: 'home_order_section_loaded_orders_in_progress_title',
      desc: '',
      args: [],
    );
  }

  /// `Finished orders`
  String get home_order_section_loaded_orders_finished_title {
    return Intl.message(
      'Finished orders',
      name: 'home_order_section_loaded_orders_finished_title',
      desc: '',
      args: [],
    );
  }

  /// `Simulate a order`
  String get home_order_simulate_order_button_label {
    return Intl.message(
      'Simulate a order',
      name: 'home_order_simulate_order_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Low storage items`
  String get home_low_storage_items_section_title {
    return Intl.message(
      'Low storage items',
      name: 'home_low_storage_items_section_title',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard_title {
    return Intl.message(
      'Dashboard',
      name: 'dashboard_title',
      desc: '',
      args: [],
    );
  }

  /// `Reports`
  String get dashboard_section_reports_button_label {
    return Intl.message(
      'Reports',
      name: 'dashboard_section_reports_button_label',
      desc: '',
      args: [],
    );
  }

  /// `Number of Items in store:`
  String get dashboard_total_items {
    return Intl.message(
      'Number of Items in store:',
      name: 'dashboard_total_items',
      desc: '',
      args: [],
    );
  }

  /// `Most expensive item:`
  String get dashboard_highest_item {
    return Intl.message(
      'Most expensive item:',
      name: 'dashboard_highest_item',
      desc: '',
      args: [],
    );
  }

  /// `Cheapest item out of stock:`
  String get dashboard_cheapest_item {
    return Intl.message(
      'Cheapest item out of stock:',
      name: 'dashboard_cheapest_item',
      desc: '',
      args: [],
    );
  }

  /// `Total Price of Products:`
  String get dashboard_total_price {
    return Intl.message(
      'Total Price of Products:',
      name: 'dashboard_total_price',
      desc: '',
      args: [],
    );
  }

  /// `Order History`
  String get history_title {
    return Intl.message(
      'Order History',
      name: 'history_title',
      desc: '',
      args: [],
    );
  }

  /// `Load more...`
  String get history_loud_orders {
    return Intl.message(
      'Load more...',
      name: 'history_loud_orders',
      desc: '',
      args: [],
    );
  }

  /// `Simulate order`
  String get simulate_order_page_title {
    return Intl.message(
      'Simulate order',
      name: 'simulate_order_page_title',
      desc: '',
      args: [],
    );
  }

  /// `It's not possible to create orders now. Click here to try again or contact the support team.`
  String get simulate_order_page_error_description {
    return Intl.message(
      'It\'s not possible to create orders now. Click here to try again or contact the support team.',
      name: 'simulate_order_page_error_description',
      desc: '',
      args: [],
    );
  }

  /// `Available products`
  String get simulate_order_available_products_title {
    return Intl.message(
      'Available products',
      name: 'simulate_order_available_products_title',
      desc: '',
      args: [],
    );
  }

  /// `Selected products`
  String get simulate_order_selected_products_title {
    return Intl.message(
      'Selected products',
      name: 'simulate_order_selected_products_title',
      desc: '',
      args: [],
    );
  }

  /// `Finish order`
  String get simulate_order_finish_order_button_title {
    return Intl.message(
      'Finish order',
      name: 'simulate_order_finish_order_button_title',
      desc: '',
      args: [],
    );
  }

  /// `Creating order...`
  String get simulate_order_create_order_loading_title {
    return Intl.message(
      'Creating order...',
      name: 'simulate_order_create_order_loading_title',
      desc: '',
      args: [],
    );
  }

  /// `Order created!`
  String get simulate_order_create_order_success_title {
    return Intl.message(
      'Order created!',
      name: 'simulate_order_create_order_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. We couldn't create your order, try again or contact our support team.`
  String get simulate_order_create_order_error_description {
    return Intl.message(
      'Something went wrong. We couldn\'t create your order, try again or contact our support team.',
      name: 'simulate_order_create_order_error_description',
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
