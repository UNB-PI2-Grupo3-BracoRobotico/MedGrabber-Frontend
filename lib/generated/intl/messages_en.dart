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

  static String m2(id) => "#${id}";

  static String m3(id) => "Order #${id}";

  static String m4(amount) => "Amount bought - ${amount}";

  static String m5(price) => "Price of product - ${price} BRLC";

  static String m6(value) => "Valor total - ${value} BRLC";

  static String m7(status) => "Status - ${status}";

  static String m8(value) => "Total value - ${value} BRLC";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_item_amount_option_label":
            MessageLookupByLibrary.simpleMessage("Amount"),
        "add_item_button_label":
            MessageLookupByLibrary.simpleMessage("Adicionar"),
        "add_item_description_option_label":
            MessageLookupByLibrary.simpleMessage("Description"),
        "add_item_generic_error_description": MessageLookupByLibrary.simpleMessage(
            "We couldn\'t create your item.\nPlease try again or contact the suport team."),
        "add_item_loading_title":
            MessageLookupByLibrary.simpleMessage("Creating item..."),
        "add_item_name_option_label":
            MessageLookupByLibrary.simpleMessage("Name"),
        "add_item_page_title": MessageLookupByLibrary.simpleMessage("Add Item"),
        "add_item_position_option_label":
            MessageLookupByLibrary.simpleMessage("Position"),
        "add_item_success_title":
            MessageLookupByLibrary.simpleMessage("Item created!"),
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
        "default_invalid_signup_description":
            MessageLookupByLibrary.simpleMessage(
                "Pleas try again! If error persist, contact our team."),
        "default_invalid_signup_title":
            MessageLookupByLibrary.simpleMessage("Sign up error! "),
        "default_invalid_token_label":
            MessageLookupByLibrary.simpleMessage("Invalid Token"),
        "edit_item_amount_option_label":
            MessageLookupByLibrary.simpleMessage("Amount"),
        "edit_item_button_label":
            MessageLookupByLibrary.simpleMessage("Save changes"),
        "edit_item_description_option_label":
            MessageLookupByLibrary.simpleMessage("Description"),
        "edit_item_generic_error_description": MessageLookupByLibrary.simpleMessage(
            "We couldn\'t edit your item.\nPlease try again or contact the suport team."),
        "edit_item_loading_title":
            MessageLookupByLibrary.simpleMessage("Editing item"),
        "edit_item_name_option_label":
            MessageLookupByLibrary.simpleMessage("Name"),
        "edit_item_page_title":
            MessageLookupByLibrary.simpleMessage("Edit item"),
        "edit_item_position_option_label":
            MessageLookupByLibrary.simpleMessage("Position"),
        "edit_item_success_title":
            MessageLookupByLibrary.simpleMessage("Item edited!"),
        "empty_string": MessageLookupByLibrary.simpleMessage(""),
        "forgotten_password_button_label":
            MessageLookupByLibrary.simpleMessage("Reset password"),
        "forgotten_password_desc": MessageLookupByLibrary.simpleMessage(
            "Enter your email and we will send you a password reset link"),
        "forgotten_password_email_not_found":
            MessageLookupByLibrary.simpleMessage("Email Not founded!"),
        "forgotten_password_email_sended_message":
            MessageLookupByLibrary.simpleMessage(
                "Please check your inbox for password reset instructions."),
        "forgotten_password_email_sended_title":
            MessageLookupByLibrary.simpleMessage("Email sent successfully!"),
        "forgotten_password_message":
            MessageLookupByLibrary.simpleMessage("Forgotten password?"),
        "forgotten_password_title":
            MessageLookupByLibrary.simpleMessage("Forgotten password"),
        "go_to_login_page_button_label": MessageLookupByLibrary.simpleMessage(
            "I\'ve already had an account"),
        "got_it": MessageLookupByLibrary.simpleMessage("Got it"),
        "help": MessageLookupByLibrary.simpleMessage("Help"),
        "help_email_contact":
            MessageLookupByLibrary.simpleMessage("MedGrabber@gmail.com"),
        "help_page_buttom_label":
            MessageLookupByLibrary.simpleMessage("Initiate Real Time Chat!"),
        "help_page_help_message":
            MessageLookupByLibrary.simpleMessage("How can we help?"),
        "help_page_send_email":
            MessageLookupByLibrary.simpleMessage("Send Email to:"),
        "help_title": MessageLookupByLibrary.simpleMessage("Help Center"),
        "home_available_itens_card":
            MessageLookupByLibrary.simpleMessage("Items ending"),
        "home_available_positions_card":
            MessageLookupByLibrary.simpleMessage("Positions available"),
        "home_low_storage_items_section_title":
            MessageLookupByLibrary.simpleMessage("Low storage items"),
        "home_order_section_error_button_label":
            MessageLookupByLibrary.simpleMessage("Try again"),
        "home_order_section_error_description":
            MessageLookupByLibrary.simpleMessage(
                "Something went wrong. We couldn\'t load in progress orders, try again or contact our support team."),
        "home_order_section_loaded_button_label":
            MessageLookupByLibrary.simpleMessage("Orders history"),
        "home_order_section_loaded_orders_finished_title":
            MessageLookupByLibrary.simpleMessage("Finished orders"),
        "home_order_section_loaded_orders_in_progress_title":
            MessageLookupByLibrary.simpleMessage("Orders in progress"),
        "home_order_section_title":
            MessageLookupByLibrary.simpleMessage("Orders"),
        "home_order_simulate_order_button_label":
            MessageLookupByLibrary.simpleMessage("Simulate a order"),
        "home_page_manage_inventory_button_label":
            MessageLookupByLibrary.simpleMessage("Manage inventory"),
        "home_page_welcome_again_title": m0,
        "informational_card_error_message":
            MessageLookupByLibrary.simpleMessage("Error, tap here"),
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
        "login_button_label": MessageLookupByLibrary.simpleMessage("Login"),
        "login_error_message":
            MessageLookupByLibrary.simpleMessage("Wrong email or password"),
        "mail_error_page_description": MessageLookupByLibrary.simpleMessage(
            "It wasn\'t possible to update your email.\nTry again, if the error persists, contact our team."),
        "mail_error_page_primary_button_label":
            MessageLookupByLibrary.simpleMessage("Try again"),
        "mail_error_page_secondary_button_label":
            MessageLookupByLibrary.simpleMessage("Change email"),
        "mail_error_page_title":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "mail_loading_page_title":
            MessageLookupByLibrary.simpleMessage("Updating mail..."),
        "mail_page_description": MessageLookupByLibrary.simpleMessage(
            "Modify the email to keep clients informed during their purchases."),
        "mail_page_field_error":
            MessageLookupByLibrary.simpleMessage("Invalid email address"),
        "mail_page_title":
            MessageLookupByLibrary.simpleMessage("Email address"),
        "mail_success_page_title":
            MessageLookupByLibrary.simpleMessage("Email updated!"),
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
        "on_boarding_description_title": MessageLookupByLibrary.simpleMessage(
            "For your first interaction with our product, we need you to complete the initial setup to link it with the Garra system.\n\nOn behalf of the Grabber team, we thank you for choosing us."),
        "on_boarding_email_page_description":
            MessageLookupByLibrary.simpleMessage(
                "Enter your email to proceed with onboarding."),
        "on_boarding_email_page_error_bottomsheet_description":
            MessageLookupByLibrary.simpleMessage(
                "Email is already registered or has an incorrect format!"),
        "on_boarding_email_page_error_bottomsheet_title":
            MessageLookupByLibrary.simpleMessage(
                "Invalid Email! Please try again."),
        "on_boarding_email_page_error_page_description":
            MessageLookupByLibrary.simpleMessage("Email cannot be empty."),
        "on_boarding_email_page_error_page_title":
            MessageLookupByLibrary.simpleMessage(
                "Unexpected Error! Please try again later or contact support for assistance."),
        "on_boarding_email_page_loading_title":
            MessageLookupByLibrary.simpleMessage("Adding email..."),
        "on_boarding_email_page_success_title":
            MessageLookupByLibrary.simpleMessage("Email Successfully Added!"),
        "on_boarding_email_page_title":
            MessageLookupByLibrary.simpleMessage("Email:"),
        "on_boarding_initial_title":
            MessageLookupByLibrary.simpleMessage("Welcome to Grabber"),
        "on_boarding_password_confirm_page_title":
            MessageLookupByLibrary.simpleMessage("Confirm Password:"),
        "on_boarding_password_page_description":
            MessageLookupByLibrary.simpleMessage(
                "Enter a password for your account with at least 8 characters."),
        "on_boarding_password_page_error_bottomsheet_description":
            MessageLookupByLibrary.simpleMessage(
                "Passwords are not the same or have fewer than 8 characters."),
        "on_boarding_password_page_error_bottomsheet_title":
            MessageLookupByLibrary.simpleMessage(
                "Invalid Password! Please try again."),
        "on_boarding_password_page_error_page_description":
            MessageLookupByLibrary.simpleMessage("Password cannot be empty."),
        "on_boarding_password_page_error_page_title":
            MessageLookupByLibrary.simpleMessage(
                "Unexpected Error! Please try again later or contact support for assistance."),
        "on_boarding_password_page_loading_title":
            MessageLookupByLibrary.simpleMessage("Setting password..."),
        "on_boarding_password_page_success_title":
            MessageLookupByLibrary.simpleMessage("Password Successfully Set!"),
        "on_boarding_password_page_title":
            MessageLookupByLibrary.simpleMessage("Password:"),
        "on_boarding_phone_page_description":
            MessageLookupByLibrary.simpleMessage(
                "Enter your phone number to proceed with onboarding."),
        "on_boarding_phone_page_error_bottomsheet_description":
            MessageLookupByLibrary.simpleMessage(
                "If the problem persists, please check your phone number and try again."),
        "on_boarding_phone_page_error_bottomsheet_title":
            MessageLookupByLibrary.simpleMessage(
                "Invalid Phone Number! Please try again."),
        "on_boarding_phone_page_error_page_description":
            MessageLookupByLibrary.simpleMessage(
                "Phone number cannot be empty."),
        "on_boarding_phone_page_error_page_title":
            MessageLookupByLibrary.simpleMessage(
                "Unexpected Error! Please try again later or contact support for assistance."),
        "on_boarding_phone_page_loading_title":
            MessageLookupByLibrary.simpleMessage("Adding phone number..."),
        "on_boarding_phone_page_success_title":
            MessageLookupByLibrary.simpleMessage(
                "Phone Number Successfully Added!"),
        "on_boarding_phone_page_title":
            MessageLookupByLibrary.simpleMessage("Phone Number:"),
        "on_boarding_token_page_description": MessageLookupByLibrary.simpleMessage(
            "Enter the token provided by the development team to connect with the machine."),
        "on_boarding_token_page_error_bottomsheet_description":
            MessageLookupByLibrary.simpleMessage(
                "If the problem persists, contact the development team."),
        "on_boarding_token_page_error_bottomsheet_title":
            MessageLookupByLibrary.simpleMessage(
                "Invalid Code! Please try again"),
        "on_boarding_token_page_error_page_description":
            MessageLookupByLibrary.simpleMessage("Code cannot be null."),
        "on_boarding_token_page_error_page_title":
            MessageLookupByLibrary.simpleMessage(
                "Unexpected Error! Contact the development team to provide a new Code"),
        "on_boarding_token_page_loading_title":
            MessageLookupByLibrary.simpleMessage("Linking machine code..."),
        "on_boarding_token_page_success_title":
            MessageLookupByLibrary.simpleMessage(
                "Machine Code successfully linked!"),
        "on_boarding_token_page_title":
            MessageLookupByLibrary.simpleMessage("Machine Code"),
        "order_check_itens_button_label":
            MessageLookupByLibrary.simpleMessage("Verify items"),
        "order_id": m2,
        "order_page_title": m3,
        "order_product_amount_bought": m4,
        "order_product_card_single_product_value": m5,
        "order_product_card_total_value": m6,
        "order_status": m7,
        "order_status_awaiting_payment":
            MessageLookupByLibrary.simpleMessage("Awaiting payment"),
        "order_status_finished":
            MessageLookupByLibrary.simpleMessage("Finished"),
        "order_status_processing":
            MessageLookupByLibrary.simpleMessage("Processing"),
        "order_status_ready_to_get":
            MessageLookupByLibrary.simpleMessage("Ready to take out"),
        "order_value": m8,
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
        "positions_option_button_error": MessageLookupByLibrary.simpleMessage(
            "Error loading available positions. <bold>Click here</bold> to try to load again."),
        "product_amount_cannot_be_empty_error_text":
            MessageLookupByLibrary.simpleMessage("Amount cannot be empty"),
        "product_description_cannot_be_empty_error_text":
            MessageLookupByLibrary.simpleMessage("Description cannot be empty"),
        "product_name_cannot_be_empty_error_text":
            MessageLookupByLibrary.simpleMessage("Name cannot be empty"),
        "product_position_cannot_be_empty_error_text":
            MessageLookupByLibrary.simpleMessage("Position cannot be empty"),
        "register_user_button_label":
            MessageLookupByLibrary.simpleMessage("Register user"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "settings_address_option_title":
            MessageLookupByLibrary.simpleMessage("Address"),
        "settings_email_option_title":
            MessageLookupByLibrary.simpleMessage("Email"),
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
        "something_went_wrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "start_button_label":
            MessageLookupByLibrary.simpleMessage("Get Started"),
        "supported_page_loading_tiltle": MessageLookupByLibrary.simpleMessage(
            "Aguarde um momento enquanto conectamos você ao nosso suporte..."),
        "try_again": MessageLookupByLibrary.simpleMessage("Try again")
      };
}
