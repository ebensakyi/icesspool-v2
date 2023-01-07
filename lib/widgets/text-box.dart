import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../themes/colors.dart';

class TextBox extends StatelessWidget {
  final String labelText;
  final dynamic prefixIcon;
  final dynamic suffixIcon;

  final dynamic fieldType;
  final dynamic controller;
  final dynamic maxLength;
  final dynamic errorText;
  final dynamic onSaved;
  final dynamic validator;
  final dynamic keyboardType;
  final dynamic hintText;
  final bool obscureText;
  TextBox(
      {Key? key,
      required this.labelText,
      this.errorText,
      this.fieldType,
      this.controller,
      this.maxLength,
      this.onSaved,
      this.keyboardType,
      this.validator,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextFormField(
        controller: controller,
        keyboardType: fieldType,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        maxLength: maxLength,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          errorText: errorText,

          labelText: labelText,
          hintText: hintText,
          filled: true,
          fillColor: MyColors.White,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            // borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigoAccent, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey, width: 1.0),
          ),
          //prefixIcon: prefixIcon,
          prefixIcon: Container(
            width: 10,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FaIcon(prefixIcon),
            ),
          ),
          suffixIcon: suffixIcon,
        ),
        obscureText: obscureText,
        onSaved: onSaved,
        validator: validator,
      ),
    );
  }
}
