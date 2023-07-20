# [Grabber](https://drive.google.com/file/d/1gGUoy-tX1PAzKfh5s0PDnD2EgqR03Qno/view?usp=sharing)

Quer entender mais do projeto? Acesse o [vídeo de overview do projeto grabber](https://drive.google.com/file/d/1gGUoy-tX1PAzKfh5s0PDnD2EgqR03Qno/view?usp=sharing)

Aplicativo de gerenciamento de estoque.

Esse projeto é feito com o framework Flutter.

A versão utilizada para o projeto será 3.3.8.

Para instalar o framework Flutter acesse [esse link](https://docs.flutter.dev/get-started/install).

No mesmo documento ao finalizar a instalação do sistema você deverá configurar para desenvolvimento Android. Siga os passos que a documentação proporciona.

### Configuração do Firebase

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

## Guia para uso do grabber

Aproveite antes para ver o [vídeo de demonstração.](https://drive.google.com/file/d/1M-EJVU-BCGFhqPh_nyVabr9BvUOcoKpT/view?usp=sharing)

Cenário 1: Quero buildar uma nova versão do aplicativo sem ser o apk já disponibilizado.

- Instale o framework Flutter e siga sua devida configuração - [Link para configuração](https://docs.flutter.dev/get-started/install)
- Instale o docker - [Guia de instalação](https://docs.docker.com/compose/)
- Clone o repositório do frontend - [Link para o repositório](https://github.com/UNB-PI2-Grupo3-BracoRobotico/MedGrabber-Frontend)
- Clone o repositório do backend - [Link para o repositório](https://github.com/UNB-PI2-Grupo3-BracoRobotico/grabber-backend)
- Abra o repositório do backend e rode o comando `docker compose up --build`
- Abra o repositório do frontend
- Configure os arquivos do firebase - Caso não tenha os arquivos disponíveis e queira testar por favor comunicar-se via seguinte e-mail [mauriciofozmmff44@gmail.com](mailto:mauriciofozmmff44@gmail.com)
- Rode o projeto frontend com algum dispositivo selecionado - Comando: `flutter run`
- Após projeto estar rodando defina o endereço de IP correto na parte inicial do app
- Para encontrar o ip correto execute: `ifconfig | grep inet | grep netmask` (caso o comande não funcione, pesquise o comando para encontrar o endereço inet que não seja o localhost)

Cenário 2: Quero usar o apk disponibilizado

- Baixe o apk disponibilizado (somente disponível para Android) - [Link do apk](https://drive.google.com/file/d/124KyWvY2FkUMaeFuLWzil94rmArfijjO/view?usp=sharing)
- Instale o docker - [Guia de instalação](https://docs.docker.com/compose/)
- Clone o repositório do backend - [Link para o repositório](https://github.com/UNB-PI2-Grupo3-BracoRobotico/grabber-backend)
- Abra o repositório do backend e rode o comando `docker compose up --build`
- Após projeto estar rodando defina o endereço de IP correto na parte inicial do app
- Para encontrar o ip correto execute: `ifconfig | grep inet | grep netmask` (caso o comande não funcione, pesquise o comando para encontrar o endereço inet que não seja o localhost)

Cenário 3: Quero testar a feature da central de ajuda

- Acesse a plataforma de ajuda - [Link da plataforma](https://dashboard.tawk.to/login)
- Insira suas credenciais de acesso:
  - email: matdavimat@gmail.com
  - senha: @Tawk123
- Pronto você está com seu agente configurado e pronto para testar a feature!

## [APK Disponibilizado](https://drive.google.com/file/d/124KyWvY2FkUMaeFuLWzil94rmArfijjO/view?usp=sharing)

[Link do apk disponibilizado](https://drive.google.com/file/d/124KyWvY2FkUMaeFuLWzil94rmArfijjO/view?usp=sharing): https://drive.google.com/file/d/124KyWvY2FkUMaeFuLWzil94rmArfijjO/view?usp=sharing
