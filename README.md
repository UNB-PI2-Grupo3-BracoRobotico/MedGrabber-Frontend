# Grabber

Aplicativo de gerenciamento de estoque.

## Getting Started

Esse projeto é feito com o framework Flutter.

A versão utilizada para o projeto será 3.3.8.

Para instalar o framework Flutter acesse [esse link](https://docs.flutter.dev/get-started/install).

No mesmo documento ao finalizar a instalação do sistema você deverá configurar para desenvolvimento Android. Siga os passos que a documentação proporciona.

### Firebase configuration

Para não expormos as configurações do firebase foram adicionados o `.gitignore` em algumas configurações caso precise entre em contato com membros da equipe de desenvolvimento:

Com os arquivos em mãos siga o passo a passo a baixo:

- **Android**

1. Dentro da pasta `android/app/` adicione o arquivo `google-services.json`

- **Ios/macos**

1. Dentro da pasta `ios/` adicione o arquivo `firebase_app_id_file.json`
2. Dentro da pasta `ios/Runner/` adicione o arquivo `GoogleService-Info.plist`
3. Dentro da pasta `macos/` adicione o arquivo `firebase_app_id_file.json`
4. Dentro da pasta `macos/Runner/` adicione o arquivo `GoogleService-Info.plist`

## Packages

O projeto tem a existência de mais de um projeto. Assim ao iniciar o projeto use um dos comandos shell disponível para rodar flutter pub get para todos os pacotes.

- FVM

Na raiz do projeto execute:

```
bash fvm_pub_get_all.sh
```

- Flutter

```
bash pub_get_all.sh
```

## Protótipo de Alta Fidelidade

[FIGMA LINK HERE](https://www.figma.com/file/En98dVrsDzcJWDpYWveyKZ/Apps?type=design&node-id=0-1&t=akSznQcSScTlIdv1-0)
