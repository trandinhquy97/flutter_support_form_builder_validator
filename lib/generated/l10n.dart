// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class SupportFormBuilderLocalization {
  SupportFormBuilderLocalization();

  static SupportFormBuilderLocalization? _current;

  static SupportFormBuilderLocalization get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<SupportFormBuilderLocalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = SupportFormBuilderLocalization();
      SupportFormBuilderLocalization._current = instance;

      return instance;
    });
  }

  static SupportFormBuilderLocalization of(BuildContext context) {
    final instance = SupportFormBuilderLocalization.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static SupportFormBuilderLocalization? maybeOf(BuildContext context) {
    return Localizations.of<SupportFormBuilderLocalization>(context, SupportFormBuilderLocalization);
  }

  /// `This field cannot be empty.`
  String get requiredErrorText {
    return Intl.message(
      'This field cannot be empty.',
      name: 'requiredErrorText',
      desc: 'Error Text for required field',
      args: [],
    );
  }

  /// `Value must be greater than or equal to {min}.`
  String minErrorText(Object min) {
    return Intl.message(
      'Value must be greater than or equal to $min.',
      name: 'minErrorText',
      desc: 'Error Text for required field',
      args: [min],
    );
  }

  /// `Value must have a length greater than or equal to {minLength}`
  String minLengthErrorText(Object minLength) {
    return Intl.message(
      'Value must have a length greater than or equal to $minLength',
      name: 'minLengthErrorText',
      desc: 'Error Text for required field',
      args: [minLength],
    );
  }

  /// `Value must be less than or equal to {max}`
  String maxErrorText(Object max) {
    return Intl.message(
      'Value must be less than or equal to $max',
      name: 'maxErrorText',
      desc: 'Error Text for required field',
      args: [max],
    );
  }

  /// `Value must have a length less than or equal to {maxLength}`
  String maxLengthErrorText(Object maxLength) {
    return Intl.message(
      'Value must have a length less than or equal to $maxLength',
      name: 'maxLengthErrorText',
      desc: 'Error Text for required field',
      args: [maxLength],
    );
  }

  /// `Value must have a length equal to {length}`
  String equalLengthErrorText(Object length) {
    return Intl.message(
      'Value must have a length equal to $length',
      name: 'equalLengthErrorText',
      desc: 'Error Text for required field',
      args: [length],
    );
  }

  /// `This field requires a valid email address.`
  String get emailErrorText {
    return Intl.message(
      'This field requires a valid email address.',
      name: 'emailErrorText',
      desc: 'Error Text for email field',
      args: [],
    );
  }

  /// `This field requires a valid integer.`
  String get integerErrorText {
    return Intl.message(
      'This field requires a valid integer.',
      name: 'integerErrorText',
      desc: 'Error Text for integer validator',
      args: [],
    );
  }

  /// `This field value must be equal to {value}.`
  String equalErrorText(Object value) {
    return Intl.message(
      'This field value must be equal to $value.',
      name: 'equalErrorText',
      desc: 'Error Text for equal validator',
      args: [value],
    );
  }

  /// `This field value must not be equal to {value}.`
  String notEqualErrorText(Object value) {
    return Intl.message(
      'This field value must not be equal to $value.',
      name: 'notEqualErrorText',
      desc: 'Error Text for not-equal validator',
      args: [value],
    );
  }

  /// `This field requires a valid URL address.`
  String get urlErrorText {
    return Intl.message(
      'This field requires a valid URL address.',
      name: 'urlErrorText',
      desc: 'Error Text for URL field',
      args: [],
    );
  }

  /// `Value does not match pattern.`
  String get matchErrorText {
    return Intl.message(
      'Value does not match pattern.',
      name: 'matchErrorText',
      desc: 'Error Text for pattern field',
      args: [],
    );
  }

  /// `Value must be numeric.`
  String get numericErrorText {
    return Intl.message(
      'Value must be numeric.',
      name: 'numericErrorText',
      desc: 'Error Text for numeric field',
      args: [],
    );
  }

  /// `This field requires a valid credit card number.`
  String get creditCardErrorText {
    return Intl.message(
      'This field requires a valid credit card number.',
      name: 'creditCardErrorText',
      desc: 'Error Text for credit card field',
      args: [],
    );
  }

  /// `This field requires a valid IP.`
  String get ipErrorText {
    return Intl.message(
      'This field requires a valid IP.',
      name: 'ipErrorText',
      desc: 'Error Text for IP address field',
      args: [],
    );
  }

  /// `This field requires a valid date string.`
  String get dateStringErrorText {
    return Intl.message(
      'This field requires a valid date string.',
      name: 'dateStringErrorText',
      desc: 'Error Text for date string field',
      args: [],
    );
  }

  /// `This field size have to smaller than {size}`
  String fileErrorText(Object size) {
    return Intl.message(
      'This field size have to smaller than $size',
      name: 'fileErrorText',
      desc: 'Error Text for date string field',
      args: [size],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<SupportFormBuilderLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<SupportFormBuilderLocalization> load(Locale locale) => SupportFormBuilderLocalization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
