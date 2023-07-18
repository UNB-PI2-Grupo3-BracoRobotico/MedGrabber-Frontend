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

  static String m0(email) =>
      "Nós enviamos um email com as orientações para redefinir sua senha. Por favor cheque a caixa de entrada e spam do email de endereço: ${email}";

  static String m1(name) => "Bem-vindo ${name}";

  static String m2(amount) => "Quantidade disponível: ${amount}";

  static String m3(id) => "#${id}";

  static String m4(id) => "Pedido #${id}";

  static String m5(amount) => "Quantidade comprada - ${amount}";

  static String m6(price) => "Preço do produto - R\$ ${price}";

  static String m7(value) => "Valor total - R\$ ${value}";

  static String m8(status) => "Status - ${status}";

  static String m9(value) => "Valor total - R\$ ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_item_amount_option_label":
            MessageLookupByLibrary.simpleMessage("Quantidade"),
        "add_item_button_label":
            MessageLookupByLibrary.simpleMessage("Adicionar"),
        "add_item_description_option_label":
            MessageLookupByLibrary.simpleMessage("Descrição"),
        "add_item_generic_error_description": MessageLookupByLibrary.simpleMessage(
            "Nós não conseguimos criar o item dessa vez.\nPor favor, tente novamente ou contate o suporte."),
        "add_item_loading_title":
            MessageLookupByLibrary.simpleMessage("Criando item..."),
        "add_item_name_option_label":
            MessageLookupByLibrary.simpleMessage("Nome"),
        "add_item_page_title":
            MessageLookupByLibrary.simpleMessage("Adicionar item"),
        "add_item_position_option_label":
            MessageLookupByLibrary.simpleMessage("Posição"),
        "add_item_price_option_label":
            MessageLookupByLibrary.simpleMessage("Price"),
        "add_item_size_option_label":
            MessageLookupByLibrary.simpleMessage("Tamanho"),
        "add_item_success_title":
            MessageLookupByLibrary.simpleMessage("Item criado!"),
        "add_item_weight_option_label":
            MessageLookupByLibrary.simpleMessage("Peso em kg"),
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
        "dashboard_cheapest_item": MessageLookupByLibrary.simpleMessage(
            "Custo mais barato no esoque:"),
        "dashboard_highest_item":
            MessageLookupByLibrary.simpleMessage("Item mais caro no estoque:"),
        "dashboard_section_reports_button_label":
            MessageLookupByLibrary.simpleMessage("Relatórios"),
        "dashboard_title": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "dashboard_total_items":
            MessageLookupByLibrary.simpleMessage("Total de Items em estoque:"),
        "dashboard_total_price":
            MessageLookupByLibrary.simpleMessage("Preço total dos produtos:"),
        "default_invalid_signup_description": MessageLookupByLibrary.simpleMessage(
            "Por favor tente novamente! Caso erro persista contate nossa equipe"),
        "default_invalid_signup_title":
            MessageLookupByLibrary.simpleMessage("Erro ao criar cadastro"),
        "default_invalid_token_label":
            MessageLookupByLibrary.simpleMessage("Token invalido"),
        "edit_item_amount_option_label":
            MessageLookupByLibrary.simpleMessage("Quantidade"),
        "edit_item_button_label":
            MessageLookupByLibrary.simpleMessage("Salvar alterações"),
        "edit_item_description_option_label":
            MessageLookupByLibrary.simpleMessage("Descrição"),
        "edit_item_generic_error_description": MessageLookupByLibrary.simpleMessage(
            "Nós não conseguimos editar o item dessa vez.\nPor favor, tente novamente ou contate o suporte."),
        "edit_item_loading_title":
            MessageLookupByLibrary.simpleMessage("Editando item"),
        "edit_item_name_option_label":
            MessageLookupByLibrary.simpleMessage("Nome"),
        "edit_item_page_title":
            MessageLookupByLibrary.simpleMessage("Editar item"),
        "edit_item_position_option_label":
            MessageLookupByLibrary.simpleMessage("Posição"),
        "edit_item_success_title":
            MessageLookupByLibrary.simpleMessage("Item editado!"),
        "empty_string": MessageLookupByLibrary.simpleMessage(""),
        "forgotten_password_button_label":
            MessageLookupByLibrary.simpleMessage("Resetar senha"),
        "forgotten_password_desc": MessageLookupByLibrary.simpleMessage(
            "Insira seu email e enviaremos código para resetar sua senha."),
        "forgotten_password_email_not_found":
            MessageLookupByLibrary.simpleMessage("Email não encontrado!"),
        "forgotten_password_email_sended_description": m0,
        "forgotten_password_email_sended_message":
            MessageLookupByLibrary.simpleMessage(
                "Por favor verifique sua caixa de mensagem para alteração da senha"),
        "forgotten_password_email_sended_title":
            MessageLookupByLibrary.simpleMessage("Email enviado com sucesso!"),
        "forgotten_password_error_page_description":
            MessageLookupByLibrary.simpleMessage(
                "We did not find an account linked to this email address in our database"),
        "forgotten_password_message":
            MessageLookupByLibrary.simpleMessage("Esqueceu sua senha?"),
        "forgotten_password_title":
            MessageLookupByLibrary.simpleMessage("Esqueceu sua senha"),
        "go_to_login_page_button_label":
            MessageLookupByLibrary.simpleMessage("Já tenho uma conta"),
        "got_it": MessageLookupByLibrary.simpleMessage("Entendi"),
        "help": MessageLookupByLibrary.simpleMessage("Ajuda"),
        "help_email_contact":
            MessageLookupByLibrary.simpleMessage("MedGrabber@gmail.com"),
        "help_page_buttom_label":
            MessageLookupByLibrary.simpleMessage("Iniciar chat em Tempo Real!"),
        "help_page_help_message":
            MessageLookupByLibrary.simpleMessage("Como podemos ajudar?"),
        "help_page_send_email":
            MessageLookupByLibrary.simpleMessage("Envia um email para:"),
        "help_title": MessageLookupByLibrary.simpleMessage("Central de Ajuda"),
        "history_loud_orders":
            MessageLookupByLibrary.simpleMessage("Carrear mais..."),
        "history_title":
            MessageLookupByLibrary.simpleMessage("Histórico de Pedidos"),
        "home_available_itens_card":
            MessageLookupByLibrary.simpleMessage("Itens acabando"),
        "home_available_positions_card":
            MessageLookupByLibrary.simpleMessage("Cubículos livres"),
        "home_low_storage_items_section_title":
            MessageLookupByLibrary.simpleMessage("Itens com baixo estoque"),
        "home_order_section_error_button_label":
            MessageLookupByLibrary.simpleMessage("Tentar novamente"),
        "home_order_section_error_description":
            MessageLookupByLibrary.simpleMessage(
                "Algo deu errado. Não conseguimos carregar os pedidos em andamento, tente novament ou entre em contato com a equipe de suporte."),
        "home_order_section_loaded_button_label":
            MessageLookupByLibrary.simpleMessage("Histórico de pedidos"),
        "home_order_section_loaded_orders_finished_title":
            MessageLookupByLibrary.simpleMessage("Pedidos finalizados"),
        "home_order_section_loaded_orders_in_progress_title":
            MessageLookupByLibrary.simpleMessage("Pedidos em andamento"),
        "home_order_section_title":
            MessageLookupByLibrary.simpleMessage("Pedidos"),
        "home_order_simulate_order_button_label":
            MessageLookupByLibrary.simpleMessage("Simule um pedido"),
        "home_page_manage_inventory_button_label":
            MessageLookupByLibrary.simpleMessage("Gerenciar estoque"),
        "home_page_welcome_again_title": m1,
        "informational_card_error_message":
            MessageLookupByLibrary.simpleMessage("Erro, clique aqui"),
        "inventory_amount_card_information": m2,
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
        "ip_connection_label":
            MessageLookupByLibrary.simpleMessage("Endereço de IP"),
        "login_button_label": MessageLookupByLibrary.simpleMessage("Login"),
        "login_email_pattern_error_description":
            MessageLookupByLibrary.simpleMessage(
                "Formatação do e-mail está incorreta!"),
        "login_error_title":
            MessageLookupByLibrary.simpleMessage("Login falhou!"),
        "login_success_message": MessageLookupByLibrary.simpleMessage(
            "Você está sendo redirecionado para a tela de home..."),
        "mail_error_page_description": MessageLookupByLibrary.simpleMessage(
            "Nós não conseguimos atualizar o endereço de e-mail.\nPor favor, tente novamente ou troque o nome inserido."),
        "mail_error_page_primary_button_label":
            MessageLookupByLibrary.simpleMessage("Tentar novamente"),
        "mail_error_page_secondary_button_label":
            MessageLookupByLibrary.simpleMessage("Trocar e-mail"),
        "mail_error_page_title":
            MessageLookupByLibrary.simpleMessage("Algo deu errado"),
        "mail_loading_page_title": MessageLookupByLibrary.simpleMessage(
            "Atualizando o endereço de e-mail..."),
        "mail_page_description": MessageLookupByLibrary.simpleMessage(
            "Mofique o e-mail que seus clientes irão enxergar durante as compras."),
        "mail_page_field_error":
            MessageLookupByLibrary.simpleMessage("Endereço de email inválido"),
        "mail_page_title":
            MessageLookupByLibrary.simpleMessage("Endereço de e-mail"),
        "mail_success_page_title": MessageLookupByLibrary.simpleMessage(
            "Endereço de e-mail atulizado!"),
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
        "on_boarding_description_title": MessageLookupByLibrary.simpleMessage(
            "Para seu primeiro contato com nosso produto precisamos que você faça as configurações iniciais para vincular com o sistema da Garra.\n\nEm nome da equipe do Grabber agradecemos pela preferência."),
        "on_boarding_email_page_description":
            MessageLookupByLibrary.simpleMessage(
                "Insira o seu email para prosseguir com o onboarding."),
        "on_boarding_email_page_error_bottomsheet_description":
            MessageLookupByLibrary.simpleMessage(
                "Email já cadastrado anteriormente ou com formatação incorreta!"),
        "on_boarding_email_page_error_bottomsheet_title":
            MessageLookupByLibrary.simpleMessage(
                "Email inválido! Por favor, tente novamente."),
        "on_boarding_email_page_error_page_description":
            MessageLookupByLibrary.simpleMessage(
                "O email não pode estar vazio."),
        "on_boarding_email_page_error_page_title":
            MessageLookupByLibrary.simpleMessage(
                "Erro inesperado! Por favor, tente novamente mais tarde ou entre em contato com o suporte para obter ajuda."),
        "on_boarding_email_page_loading_title":
            MessageLookupByLibrary.simpleMessage("Adicionando email..."),
        "on_boarding_email_page_success_title":
            MessageLookupByLibrary.simpleMessage(
                "Email adicionado com sucesso!"),
        "on_boarding_email_page_title":
            MessageLookupByLibrary.simpleMessage("Email:"),
        "on_boarding_initial_title":
            MessageLookupByLibrary.simpleMessage("Bem vindo ao Grabber"),
        "on_boarding_password_confirm_page_title":
            MessageLookupByLibrary.simpleMessage("Confirmar Senha:"),
        "on_boarding_password_page_description":
            MessageLookupByLibrary.simpleMessage(
                "Digite uma senha para sua conta com pelo menos 8 caracteres."),
        "on_boarding_password_page_error_bottomsheet_description":
            MessageLookupByLibrary.simpleMessage(
                "Senha não estão iguais ou possuem menos que 8 caracteres"),
        "on_boarding_password_page_error_bottomsheet_title":
            MessageLookupByLibrary.simpleMessage(
                "Senha inválida! Por favor, tente novamente."),
        "on_boarding_password_page_error_page_description":
            MessageLookupByLibrary.simpleMessage(
                "A senha não pode estar vazia."),
        "on_boarding_password_page_error_page_title":
            MessageLookupByLibrary.simpleMessage(
                "Erro inesperado! Por favor, tente novamente mais tarde ou entre em contato com o suporte para obter ajuda."),
        "on_boarding_password_page_loading_title":
            MessageLookupByLibrary.simpleMessage("Definindo senha..."),
        "on_boarding_password_page_success_title":
            MessageLookupByLibrary.simpleMessage("Senha definida com sucesso!"),
        "on_boarding_password_page_title":
            MessageLookupByLibrary.simpleMessage("Senha:"),
        "on_boarding_phone_page_description": MessageLookupByLibrary.simpleMessage(
            "Insira o seu número de telefone para prosseguir com o onboarding."),
        "on_boarding_phone_page_error_bottomsheet_description":
            MessageLookupByLibrary.simpleMessage(
                "Se o problema persistir, verifique o número de telefone e tente novamente."),
        "on_boarding_phone_page_error_bottomsheet_title":
            MessageLookupByLibrary.simpleMessage(
                "Número de telefone inválido! Por favor, tente novamente."),
        "on_boarding_phone_page_error_page_description":
            MessageLookupByLibrary.simpleMessage(
                "O número de telefone não pode estar vazio."),
        "on_boarding_phone_page_error_page_title":
            MessageLookupByLibrary.simpleMessage(
                "Erro inesperado! Por favor, tente novamente mais tarde ou entre em contato com o suporte para obter ajuda."),
        "on_boarding_phone_page_loading_title":
            MessageLookupByLibrary.simpleMessage(
                "Adicionando número de telefone..."),
        "on_boarding_phone_page_success_title":
            MessageLookupByLibrary.simpleMessage(
                "Número de telefone adicionado com sucesso!"),
        "on_boarding_phone_page_title":
            MessageLookupByLibrary.simpleMessage("Número de telefone:"),
        "on_boarding_success_account_creation_title":
            MessageLookupByLibrary.simpleMessage("Conta criada!"),
        "on_boarding_token_page_description": MessageLookupByLibrary.simpleMessage(
            "Insira o token fornecido pela equipe de desenvolvimento para conectar com máquina."),
        "on_boarding_token_page_error_bottomsheet_description":
            MessageLookupByLibrary.simpleMessage(
                "Caso problema persista entre em contato com equipe de desenvolvimento"),
        "on_boarding_token_page_error_bottomsheet_title":
            MessageLookupByLibrary.simpleMessage(
                "Código inválido! Tente novamente"),
        "on_boarding_token_page_error_page_description":
            MessageLookupByLibrary.simpleMessage("Código não pode ser nulo."),
        "on_boarding_token_page_error_page_title":
            MessageLookupByLibrary.simpleMessage(
                "Erro inesperado! Entre em contato com equipe de desenvolvimento para providenciarmos novo Código"),
        "on_boarding_token_page_loading_title":
            MessageLookupByLibrary.simpleMessage(
                "Vinculando código da máquina..."),
        "on_boarding_token_page_success_title":
            MessageLookupByLibrary.simpleMessage(
                "Código da máquina vinculado com sucesso!"),
        "on_boarding_token_page_title":
            MessageLookupByLibrary.simpleMessage("Código da máquina: "),
        "order_check_itens_button_label":
            MessageLookupByLibrary.simpleMessage("Verificar itens"),
        "order_id": m3,
        "order_page_title": m4,
        "order_product_amount_bought": m5,
        "order_product_card_single_product_value": m6,
        "order_product_card_total_value": m7,
        "order_status": m8,
        "order_status_awaiting_payment":
            MessageLookupByLibrary.simpleMessage("Aguardando pagamento"),
        "order_status_finished":
            MessageLookupByLibrary.simpleMessage("Finalizado"),
        "order_status_pending":
            MessageLookupByLibrary.simpleMessage("Pendente"),
        "order_status_processing":
            MessageLookupByLibrary.simpleMessage("Processando"),
        "order_status_ready_to_get":
            MessageLookupByLibrary.simpleMessage("Pronto para retirada"),
        "order_status_unknown":
            MessageLookupByLibrary.simpleMessage("Desconhecido"),
        "order_value": m9,
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
        "positions_option_button_error": MessageLookupByLibrary.simpleMessage(
            "Erro ao carregar posições. <bold>Clique aqui</bold> para tentar carregar as posições novamente."),
        "product_amount_cannot_be_empty_error_text":
            MessageLookupByLibrary.simpleMessage(
                "Quantidade não pode ser vazia"),
        "product_description_cannot_be_empty_error_text":
            MessageLookupByLibrary.simpleMessage(
                "Descrição não pode ser vazia"),
        "product_name_cannot_be_empty_error_text":
            MessageLookupByLibrary.simpleMessage("Nome não pode ser vazio"),
        "product_position_cannot_be_empty_error_text":
            MessageLookupByLibrary.simpleMessage("Posição não pode ser vazia"),
        "product_price_cannot_be_empty_error_text":
            MessageLookupByLibrary.simpleMessage("Preço não pode ser vazio"),
        "product_size_cannot_be_empty_error_text":
            MessageLookupByLibrary.simpleMessage("Tamanho não pode ser vazio"),
        "product_weight_cannot_be_empty_error_text":
            MessageLookupByLibrary.simpleMessage("Peso não pode ser vazio"),
        "register_user_button_label":
            MessageLookupByLibrary.simpleMessage("Registrar usuário"),
        "save": MessageLookupByLibrary.simpleMessage("Salvar"),
        "settings_connection_option_title":
            MessageLookupByLibrary.simpleMessage("Conexão IP"),
        "settings_email_option_title":
            MessageLookupByLibrary.simpleMessage("E-mail"),
        "settings_name_option_title":
            MessageLookupByLibrary.simpleMessage("Nome"),
        "settings_phone_option_title":
            MessageLookupByLibrary.simpleMessage("Telefone"),
        "settings_signout_option_title":
            MessageLookupByLibrary.simpleMessage("Deslogar"),
        "settings_title": MessageLookupByLibrary.simpleMessage("Configurações"),
        "setup_machine_error_description": MessageLookupByLibrary.simpleMessage(
            "Não foi possível configurar sua máquina.\nTente novamente. Caso o erro persista,\ncontate nossa equipe."),
        "setup_machine_error_title":
            MessageLookupByLibrary.simpleMessage("Algo deu errado"),
        "setup_machine_loading_title":
            MessageLookupByLibrary.simpleMessage("Configurando sua máquina..."),
        "setup_machine_success_title":
            MessageLookupByLibrary.simpleMessage("Braço configurado!"),
        "simulate_order_available_products_title":
            MessageLookupByLibrary.simpleMessage("Produtos disponíveis"),
        "simulate_order_create_order_error_description":
            MessageLookupByLibrary.simpleMessage(
                "Algo deu errado. Não conseguimos criar o pedido, tente novament ou entre em contato com a equipe de suporte."),
        "simulate_order_create_order_loading_title":
            MessageLookupByLibrary.simpleMessage("Criando pedido..."),
        "simulate_order_create_order_success_title":
            MessageLookupByLibrary.simpleMessage("Pedido criado!"),
        "simulate_order_finish_order_button_title":
            MessageLookupByLibrary.simpleMessage("Finalizar pedido"),
        "simulate_order_page_error_description":
            MessageLookupByLibrary.simpleMessage(
                "Não é possível realizar um pedido agora. Clique aqui para tentar novamente ou contate a equipe de suporte."),
        "simulate_order_page_title":
            MessageLookupByLibrary.simpleMessage("Simular pedido"),
        "simulate_order_selected_products_title":
            MessageLookupByLibrary.simpleMessage("Produtos selecionados"),
        "something_went_wrong":
            MessageLookupByLibrary.simpleMessage("Algo deu errado"),
        "start_button_label": MessageLookupByLibrary.simpleMessage("Iniciar"),
        "supported_page_loading_tiltle": MessageLookupByLibrary.simpleMessage(
            "Aguarde um momento enquanto conectamos você ao nosso suporte..."),
        "try_again": MessageLookupByLibrary.simpleMessage("Tentar novamente")
      };
}
