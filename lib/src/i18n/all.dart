import '../locale.dart';
import 'az.dart';
import 'ca_es.dart';
import 'de.dart';
import 'en.dart';
import 'es.dart';
import 'fr.dart';
import 'he.dart';
import 'id.dart';
import 'it.dart';
import 'jp.dart';
import 'pl.dart';
import 'pt_br.dart';
import 'tr.dart';
import 'zh_cn.dart';

const localeMap = <String, FormValidatorLocale>{
  'az': LocaleAz(),
  'ca-es': LocaleCaEs(),
  'de': LocaleDe(),
  'es': LocaleEs(),
  'fr': LocaleFr(),
  'id': LocaleId(),
  'it': LocaleIt(),
  'tr': LocaleTr(),
  'pt-br': LocalePtBr(),
  'pl': LocalePl(),
  'zh-cn': LocaleZhCN(),
  'en': LocaleEn(),
  'he': LocaleHe(),
  'jp': LocaleJp(),
};

final supportedLocales = localeMap.keys.toList();

FormValidatorLocale createLocale(String locale) {
  if (locale == 'default') locale = 'en';

  final result = localeMap[locale];
  if (result != null) return result;

  throw ArgumentError.value(
    locale,
    'locale',
    'Form validation locale is not yet supported.',
  );
}
