// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt_BR locale. All the
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
  String get localeName => 'pt_BR';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "continue_button_label":
            MessageLookupByLibrary.simpleMessage("Continuar"),
        "help": MessageLookupByLibrary.simpleMessage("Ajuda"),
        "name_page_description": MessageLookupByLibrary.simpleMessage(
            "Modifique o nome da loja que seus clientes irão enxergar durante as compras.\nSeu nome deve seguir algumas <bold>regras:\n• Não pode começar com números\n• Deve ter ao máximo 25 caracteres</bold>"),
        "name_page_title": MessageLookupByLibrary.simpleMessage("Nome da Loja"),
        "save": MessageLookupByLibrary.simpleMessage("Salvar"),
        "settings_address_option_title":
            MessageLookupByLibrary.simpleMessage("Endereço"),
        "settings_name_option_title":
            MessageLookupByLibrary.simpleMessage("Nome"),
        "settings_phone_option_title":
            MessageLookupByLibrary.simpleMessage("Telefone"),
        "settings_title": MessageLookupByLibrary.simpleMessage("Configurações"),
        "setup_machine_error_description": MessageLookupByLibrary.simpleMessage(
            "Não foi possível configurar sua máquina.\nTente novamente. Caso o erro persista,\ncontate nossa equipe."),
        "setup_machine_error_title":
            MessageLookupByLibrary.simpleMessage("Algo deu errado"),
        "setup_machine_loading_title":
            MessageLookupByLibrary.simpleMessage("Configurando sua máquina..."),
        "setup_machine_success_title":
            MessageLookupByLibrary.simpleMessage("Braço configurado!"),
        "try_again": MessageLookupByLibrary.simpleMessage("Tentar novamente")
      };
}
