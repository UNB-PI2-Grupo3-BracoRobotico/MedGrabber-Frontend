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

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "continue_button_label":
            MessageLookupByLibrary.simpleMessage("Continue"),
        "help": MessageLookupByLibrary.simpleMessage("Help"),
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
