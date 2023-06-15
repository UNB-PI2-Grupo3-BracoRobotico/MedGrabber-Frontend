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
        "name_page_description": MessageLookupByLibrary.simpleMessage(
            "Modify your store\'s name so that clients can see the updated name.\nYour name must follow this <bold>rules:\n• Cannot start with numbers\n• Must be at max 25 characters long</bold>"),
        "name_page_title":
            MessageLookupByLibrary.simpleMessage("Store\'s Name"),
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
