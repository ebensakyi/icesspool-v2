import 'dart:developer';

import 'package:get/get_utils/src/get_utils/get_utils.dart';

class Validator {
  static String? textFieldValidator(String value) {
    if (value == null || value == "") {
      return "Please enter value. Field cannot be empty.";
    }
    return null;
  }

  static String? dropdownValidator(String value) {
    if (value == null || value == "") {
      return "Please select an option.";
    }
    return null;
  }

  static String? multiSelectValidator(value) {
    if (value == null || value.length == 0) {
      return 'Please select one or more options';
    }
    return null;
  }

  static String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  static String? validateUserName(String value) {
    if (!GetUtils.isUsername(value)) {
      return "Provide valid name";
    }
    return null;
  }

  static String? validatePhone(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return "Provide valid phone  number";
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }
}
