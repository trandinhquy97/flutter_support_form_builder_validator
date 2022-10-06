import 'dart:io';

import 'package:flutter/material.dart';
import 'package:support_form_builder_validator/generated/l10n.dart';
import 'package:support_form_builder_validator/src/utils/validators.dart';

class FormBuilderValidators {

  static FormFieldValidator<T> compose<T>(
      List<FormFieldValidator<T>> validators) {
    return (valueCandidate) {
      for (var validator in validators) {
        final validationResult = validator.call(valueCandidate);
        if (validationResult != null) {
          return validationResult;
        }
      }
      return null;
    };
  }

  static FormFieldValidator<T> required<T>({
    String? errorText,
  }) {
    return (T? valueCandidate) {
      if (valueCandidate == null ||
          (valueCandidate is String && valueCandidate.trim().isEmpty) ||
          (valueCandidate is Iterable && valueCandidate.isEmpty) ||
          (valueCandidate is Map && valueCandidate.isEmpty)) {
        return errorText ?? SupportFormBuilderLocalization.current.requiredErrorText;
      }
      return null;
    };
  }

  static FormFieldValidator<T> equal<T>(Object value, {String? errorText}) =>
          (valueCandidate) =>
      valueCandidate != value ? errorText ?? SupportFormBuilderLocalization.current.equalErrorText(value) : null;

  static FormFieldValidator<T> notEqual<T>(Object value, {String? errorText}) =>
          (valueCandidate) =>
      valueCandidate == value ? errorText ?? SupportFormBuilderLocalization.current.notEqualErrorText(value) : null;

  static FormFieldValidator<T> min<T>(
      num min, {
        bool inclusive = true,
        String? errorText,
      }) {
    return (T? valueCandidate) {
      if (valueCandidate != null) {
        assert(valueCandidate is num || valueCandidate is String);
        final number = valueCandidate is num
            ? valueCandidate
            : num.tryParse(valueCandidate.toString());

        if (number != null && (inclusive ? number < min : number <= min)) {
          return errorText ?? SupportFormBuilderLocalization.current.minErrorText(min);
        }
      }
      return null;
    };
  }

  static FormFieldValidator<T> max<T>(
      num max, {
        bool inclusive = true,
        String? errorText,
      }) {
    return (T? valueCandidate) {
      if (valueCandidate != null) {
        assert(valueCandidate is num || valueCandidate is String);
        final number = valueCandidate is num
            ? valueCandidate
            : num.tryParse(valueCandidate.toString());

        if (number != null && (inclusive ? number > max : number >= max)) {
          return errorText ?? SupportFormBuilderLocalization.current.maxErrorText(max);
        }
      }
      return null;
    };
  }

  static FormFieldValidator<T> minLength<T>(int minLength,
      {bool allowEmpty = false, String? errorText}) {
    assert(minLength > 0);
    return (T? valueCandidate) {
      assert(valueCandidate is String ||
          valueCandidate is Iterable ||
          valueCandidate == null);
      var valueLength = 0;
      if (valueCandidate is String) valueLength = valueCandidate.length;
      if (valueCandidate is Iterable) valueLength = valueCandidate.length;
      return valueLength < minLength && (!allowEmpty || valueLength > 0)
          ? errorText ?? SupportFormBuilderLocalization.current.minLengthErrorText(minLength)
          : null;
    };
  }

  static FormFieldValidator<T> maxLength<T>(
      int maxLength, {
        String? errorText,
      }) {
    assert(maxLength > 0);
    return (T? valueCandidate) {
      assert(valueCandidate is String ||
          valueCandidate is Iterable ||
          valueCandidate == null);
      int valueLength = 0;
      if (valueCandidate is String) valueLength = valueCandidate.length;
      if (valueCandidate is Iterable) valueLength = valueCandidate.length;
      return null != valueCandidate && valueLength > maxLength
          ? errorText ?? SupportFormBuilderLocalization.current.maxLengthErrorText(maxLength)
          : null;
    };
  }

  static FormFieldValidator<T> equalLength<T>(
      int length, {
        bool allowEmpty = false,
        String? errorText,
      }) {
    assert(length > 0);
    return (T? valueCandidate) {
      assert(valueCandidate is String ||
          valueCandidate is Iterable ||
          valueCandidate is int ||
          valueCandidate == null);
      int valueLength = 0;

      if (valueCandidate is int) valueLength = valueCandidate.toString().length;
      if (valueCandidate is String) valueLength = valueCandidate.length;
      if (valueCandidate is Iterable) valueLength = valueCandidate.length;

      return valueLength != length && (!allowEmpty || valueLength > 0)
          ? errorText ?? SupportFormBuilderLocalization.current.equalLengthErrorText(length)
          : null;
    };
  }

  static FormFieldValidator<String> email({
    String? errorText,
  }) =>
          (valueCandidate) =>
      (valueCandidate?.isNotEmpty ?? false) && !isEmail(valueCandidate!)
          ? errorText ?? SupportFormBuilderLocalization.current.emailErrorText
          : null;

  static FormFieldValidator<String> match(
      String pattern, {
        String? errorText,
      }) =>
          (valueCandidate) => true == valueCandidate?.isNotEmpty &&
          !RegExp(pattern).hasMatch(valueCandidate!)
          ? errorText ?? SupportFormBuilderLocalization.current.matchErrorText
          : null;

  static FormFieldValidator<String> numeric({
    String? errorText,
  }) =>
          (valueCandidate) => true == valueCandidate?.isNotEmpty &&
          null == num.tryParse(valueCandidate!)
          ? errorText ?? SupportFormBuilderLocalization.current.numericErrorText
          : null;

  static FormFieldValidator<String> integer({String? errorText, int? radix}) =>
          (valueCandidate) => true == valueCandidate?.isNotEmpty &&
          null == int.tryParse(valueCandidate!, radix: radix)
          ? errorText ?? SupportFormBuilderLocalization.current.integerErrorText
          : null;

  static FormFieldValidator<String> dateString({
    String? errorText,
  }) => (valueCandidate) => true == valueCandidate?.isNotEmpty &&
      !isDate(valueCandidate!)
      ? errorText ?? SupportFormBuilderLocalization.current.dateStringErrorText
      : null;

  static FormFieldValidator<File> file(int maxSize, {
    String? errorText,
  }) {
    assert(maxSize > 0);
    return (valueCandidate) {
      return (valueCandidate != null && valueCandidate.lengthSync() > maxSize)
          ? errorText ?? SupportFormBuilderLocalization.current.fileErrorText(maxSize.toString())
          : null;
    };
  }
}
