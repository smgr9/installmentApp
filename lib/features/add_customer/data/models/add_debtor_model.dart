import 'package:flutter/material.dart';

class AddDebtorForm {
  final String lable;
  final bool? enable;
  final Widget? suffixIcon;
  final String? suffixText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final bool? autofocus;
  TextEditingController? controller;

  AddDebtorForm({
    this.controller,
    this.autofocus,
    this.onChanged,
    this.keyboardType,
    this.validator,
    required this.lable,
    this.enable,
    this.suffixIcon,
    this.suffixText,
  });
}
