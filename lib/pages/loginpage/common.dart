import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget commonTextFormField({
  BuildContext? context,
  double? size,
  String? hintText,
  TextInputType? keyboardType,
  required TextEditingController? controller,
  String? Function(String?)? validation,
  InputBorder? border,
  Widget? prefixIcon,
  Widget? suffixIcon,
  bool? obscureText,
  TextStyle? hintStyle,
  FocusNode? focusNode,
}) {
  return TextFormField(
    focusNode: focusNode,
    controller: controller,
    validator: validation,
    obscureText: obscureText ?? false,
    keyboardType: keyboardType,
    style: GoogleFonts.poppins(),
    decoration: InputDecoration(
      suffixIcon: suffixIcon,
      errorStyle: GoogleFonts.poppins(),
      contentPadding: EdgeInsets.symmetric(vertical: 15),
      hintText: hintText,
      hintStyle: hintStyle ?? null,
      border: borderTextfield(),
      focusedBorder: borderTextfield(),
      prefixIcon: prefixIcon,
      enabledBorder: borderTextfield(),
      errorBorder: borderTextfield(),
      disabledBorder: borderTextfield(),
      focusedErrorBorder: borderTextfield(),
    ),
  );
}

UnderlineInputBorder borderTextfield() {
  return UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  );
  // return OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(10),
  //   borderSide: BorderSide(color: ColorRes.grey,),
  // );
}

TextStyle appTextStyle({
  Color? textColor,
  double? fontSize,
  FontWeight? fontWeight,
  TextDecoration? textDecoration,
  double? height,
  double? letterSpacing,
}) {
  return GoogleFonts.poppins(
    color: textColor,
    fontSize: fontSize ?? 16,
    fontWeight: fontWeight ?? FontWeight.normal,
    decoration: textDecoration ?? TextDecoration.none,
    height: height,
    letterSpacing: letterSpacing,
  );
}

String? nameValidation(value) {
  if (value == null || value == '') {
    return "Please enter username";
  }
}

String? emailValidation(value) {
  bool validEmail = RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(value ?? '');
  if (value == null || value == '') {
    return "Please enter your email-id";
  } else if (validEmail == false) {
    return "Please enter valid email-id";
  }

  return null;
}

String? passwordValidation(value) {
  if (value == null || value == '') {
    return "Please enter password";
  }
}
