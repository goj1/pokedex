import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension Extensions on String {
  bool isValidEmail() {
    return RegExp(r'''^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$''').hasMatch(this);
  }

  bool stringIsEmpty() {
    return isEmpty;
  }

  bool isSmall() {
    return length < 6;
  }

  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String dateTimeFormat() {
    DateTime date = DateTime.parse(split('.')[0]);
    return DateFormat('yMd', 'pt_BR').add_jms().format(date);
  }

  String dateFormat() {
    DateTime date = DateTime.parse(split('.')[0]);
    return DateFormat('yMd', 'pt_BR').format(date);
  }

  String yearFormat() {
    if (isNotEmpty) {
      DateTime date = DateTime.parse(split('.')[0]);
      return DateFormat('yyyy', 'pt_BR').format(date);
    }
    return '';
  }

  String formatVersionCode() {
    if (isNotEmpty) {
      return '${substring(0, 1)}.${substring(3, 4)}.${substring(6, 7)}';
    }
    return '';
  }

  String getLanguage() {
    return split('-')[0];
  }

  String getCountryCode() {
    return split('-')[1];
  }

  String getAutor() {
    return isEmpty || toLowerCase() == 'none' ? '' : this;
  }

  int? extractPageFromUrl() {
    final regex = RegExp(r'page=(\d+)');
    return int.tryParse(regex.firstMatch(this)?.group(1) ?? '1');
  }
}
