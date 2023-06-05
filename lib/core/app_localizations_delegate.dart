import 'package:flutter/material.dart';
import 'package:multiple_localization/multiple_localization.dart';

import '../generated/intl/messages_all.dart';
import '../generated/l10n.dart';

const localizationsDelegate = AppLocalizationsDelegate();

class AppLocalizationsDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return S.delegate.isSupported(locale);
  }

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  Future<S> load(Locale locale) async {
    final localization = await MultipleLocalizations.load(
      initializeMessages,
      locale,
      (localeName) async {
        return await S.load(locale);
      },
      setDefaultLocale: true,
    );
    return localization;
  }

  @override
  bool shouldReload(LocalizationsDelegate<S> old) {
    return false;
  }
}
