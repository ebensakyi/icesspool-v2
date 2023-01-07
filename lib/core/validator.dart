import 'dart:developer';

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
}
