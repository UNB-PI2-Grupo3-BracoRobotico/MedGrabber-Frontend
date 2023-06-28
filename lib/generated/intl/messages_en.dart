// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(name) => "Welcome ${name}";

  static String m1(amount) => "Amount available: ${amount}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "bottom_navigation_dashboard_option":
            MessageLookupByLibrary.simpleMessage("Dashboard"),
        "bottom_navigation_help_option":
            MessageLookupByLibrary.simpleMessage("Help"),
        "bottom_navigation_home_option":
            MessageLookupByLibrary.simpleMessage("Home"),
        "bottom_navigation_notifications_option":
            MessageLookupByLibrary.simpleMessage("Notifications"),
        "bottom_navigation_settings_option":
            MessageLookupByLibrary.simpleMessage("Settings"),
        "continue_button_label":
            MessageLookupByLibrary.simpleMessage("Continue"),
        "got_it": MessageLookupByLibrary.simpleMessage("Got it"),
        "help": MessageLookupByLibrary.simpleMessage("Help"),
        "help_title" : 
            MessageLookupByLibrary.simpleMessage("Help Center"),
        "help_page_help_message":
          MessageLookupByLibrary.simpleMessage("How can we help?"),
        "help_page_buttom_label":
          MessageLookupByLibrary.simpleMessage("Initiate Real Time Chat!"),
        "home_page_manage_inventory_button_label":
            MessageLookupByLibrary.simpleMessage("Manage inventory"),
        "help_page_send_email":
          MessageLookupByLibrary.simpleMessage("Send Email to:"),
        "help_email_contact ":
           MessageLookupByLibrary.simpleMessage("MedGrabber@gmail.com"),
        "home_page_welcome_again_title": m0,
        "inventory_amount_card_information": m1,
        "inventory_error_page_description": MessageLookupByLibrary.simpleMessage(
            "We couldn\'t load your store itens.\nPlease try again or contact the suport team."),
        "inventory_error_page_title":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "inventory_page_loading":
            MessageLookupByLibrary.simpleMessage("Loading your inventory..."),
        "inventory_page_no_item_registered_button_labek":
            MessageLookupByLibrary.simpleMessage("Add item"),
        "inventory_page_no_item_registered_description":
            MessageLookupByLibrary.simpleMessage(
                "It seems like you haven\'y registered any item yet. Register now and start managing your business the best way possible!"),
        "inventory_page_title":
            MessageLookupByLibrary.simpleMessage("Inventory"),
        "name_error_page_description": MessageLookupByLibrary.simpleMessage(
            "We couldn\'t update your store\'s name.\nPlease try again or change the inserted name."),
        "name_error_page_primary_button_label":
            MessageLookupByLibrary.simpleMessage("Try again"),
        "name_error_page_secondary_button_label":
            MessageLookupByLibrary.simpleMessage("Change name"),
        "name_error_page_title":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "name_loading_page_title": MessageLookupByLibrary.simpleMessage(
            "Updating your store\'s name..."),
        "name_page_description": MessageLookupByLibrary.simpleMessage(
            "Modify your store\'s name so that clients can see the updated name.\nYour name must follow these <bold>rules:\n• Cannot start with numbers\n• Must be at max 25 characters long</bold>"),
        "name_page_field_error_cannot_start_with_number":
            MessageLookupByLibrary.simpleMessage(
                "The store name cannot start with number"),
        "name_page_title":
            MessageLookupByLibrary.simpleMessage("Store\'s Name"),
        "name_success_page_title":
            MessageLookupByLibrary.simpleMessage("Store name updated!"),
        "phone_page_description": MessageLookupByLibrary.simpleMessage(
            "Modify the number of your store to keep clients informed during their purchases."),
        "phone_page_error_bottomsheet_description":
            MessageLookupByLibrary.simpleMessage(
                "Please recheck the phone number you inserted.\nJust to remember the phone number must be from Brazil."),
        "phone_page_error_bottomsheet_title":
            MessageLookupByLibrary.simpleMessage("Invalid number"),
        "phone_page_error_page_description": MessageLookupByLibrary.simpleMessage(
            "It wasn\'t possible to update your phone number.\nTry again, if the error persists, contact our team."),
        "phone_page_error_page_title":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "phone_page_loading_title": MessageLookupByLibrary.simpleMessage(
            "Updating your phone number..."),
        "phone_page_success_title":
            MessageLookupByLibrary.simpleMessage("Phone number updated!"),
        "phone_page_title":
            MessageLookupByLibrary.simpleMessage("Phone Number"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "settings_address_option_title":
            MessageLookupByLibrary.simpleMessage("Address"),
        "settings_name_option_title":
            MessageLookupByLibrary.simpleMessage("Name"),
        "settings_phone_option_title":
            MessageLookupByLibrary.simpleMessage("Phone"),
        "settings_title": MessageLookupByLibrary.simpleMessage("Settings"),
        "setup_machine_error_description": MessageLookupByLibrary.simpleMessage(
            "It was not possible to set up your machine.\nTry again, if the error persists\ncontact our team."),
        "setup_machine_error_title":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "setup_machine_loading_title":
            MessageLookupByLibrary.simpleMessage("Setting up your machine..."),
        "setup_machine_success_title":
            MessageLookupByLibrary.simpleMessage("Arm configurated!"),
        "try_again": MessageLookupByLibrary.simpleMessage("Try again")
      };
}
