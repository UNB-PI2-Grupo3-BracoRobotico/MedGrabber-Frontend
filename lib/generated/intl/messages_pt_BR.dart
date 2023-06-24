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

  static String m0(name) => "Bem-vindo ${name}";

  static String m1(amount) => "Quantidade disponível: ${amount}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "bottom_navigation_dashboard_option":
            MessageLookupByLibrary.simpleMessage("Dashboard"),
        "bottom_navigation_help_option":
            MessageLookupByLibrary.simpleMessage("Ajuda"),
        "bottom_navigation_home_option":
            MessageLookupByLibrary.simpleMessage("Início"),
        "bottom_navigation_notifications_option":
            MessageLookupByLibrary.simpleMessage("Notificações"),
        "bottom_navigation_settings_option":
            MessageLookupByLibrary.simpleMessage("Configurações"),
        "continue_button_label":
            MessageLookupByLibrary.simpleMessage("Continuar"),
        "got_it": MessageLookupByLibrary.simpleMessage("Entendi"),
        "help": MessageLookupByLibrary.simpleMessage("Ajuda"),
        "home_page_manage_inventory_button_label":
            MessageLookupByLibrary.simpleMessage("Gerenciar estoque"),
        "home_page_welcome_again_title": m0,
        "inventory_amount_card_information": m1,
        "inventory_error_page_description": MessageLookupByLibrary.simpleMessage(
            "Nós não conseguimos carregar o seu inventário.\nPor favor, tente novamente ou contate o suporte."),
        "inventory_error_page_title":
            MessageLookupByLibrary.simpleMessage("Algo deu errado"),
        "inventory_page_loading":
            MessageLookupByLibrary.simpleMessage("Carregando seu estoque..."),
        "inventory_page_no_item_registered_button_labek":
            MessageLookupByLibrary.simpleMessage("Adicionar item"),
        "inventory_page_no_item_registered_description":
            MessageLookupByLibrary.simpleMessage(
                "Parece que você ainda não cadastrou nenhum item. Cadastre um item e comece a gerenciar seu negócio da melhor forma possível!"),
        "inventory_page_title": MessageLookupByLibrary.simpleMessage("Estoque"),
        "name_error_page_description": MessageLookupByLibrary.simpleMessage(
            "Nós não conseguimos atualizar o nome da sua loja.\nPor favor, tente novamente ou troque o nome inserido."),
        "name_error_page_primary_button_label":
            MessageLookupByLibrary.simpleMessage("Tentar novamente"),
        "name_error_page_secondary_button_label":
            MessageLookupByLibrary.simpleMessage("Trocar nome"),
        "name_error_page_title":
            MessageLookupByLibrary.simpleMessage("Algo deu errado"),
        "name_loading_page_title": MessageLookupByLibrary.simpleMessage(
            "Atualizando o nome da sua loja..."),
        "name_page_description": MessageLookupByLibrary.simpleMessage(
            "Modifique o nome da loja que seus clientes irão enxergar durante as compras.\nSeu nome deve seguir algumas <bold>regras:\n• Não pode começar com números\n• Deve ter ao máximo 25 caracteres</bold>"),
        "name_page_field_error_cannot_start_with_number":
            MessageLookupByLibrary.simpleMessage(
                "O nome da loja não pode começar com número"),
        "name_page_title": MessageLookupByLibrary.simpleMessage("Nome da Loja"),
        "name_success_page_title":
            MessageLookupByLibrary.simpleMessage("Nome da loja atulizado!"),
        "phone_page_description": MessageLookupByLibrary.simpleMessage(
            "Modifique o número de telefone/celular da sua sua loja para manter seus clientes informados durante as compras."),
        "phone_page_error_bottomsheet_description":
            MessageLookupByLibrary.simpleMessage(
                "Verifique novamente o número inserido. Lembrando, o número inserido deve ser do Brasil."),
        "phone_page_error_bottomsheet_title":
            MessageLookupByLibrary.simpleMessage("Número invalido"),
        "phone_page_error_page_description": MessageLookupByLibrary.simpleMessage(
            "Não foi possível atualizar seu número de telefone.\nTente novamente, caso o erro persista, contate nossa equipe."),
        "phone_page_error_page_title":
            MessageLookupByLibrary.simpleMessage("Algo deu errado"),
        "phone_page_loading_title": MessageLookupByLibrary.simpleMessage(
            "Atualizando o número do seu telefone..."),
        "phone_page_success_title": MessageLookupByLibrary.simpleMessage(
            "Número de telefone atualizado!"),
        "phone_page_title": MessageLookupByLibrary.simpleMessage("Telefone"),
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
