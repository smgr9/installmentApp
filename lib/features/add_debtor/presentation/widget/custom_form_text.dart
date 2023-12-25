import 'package:first_temp/core/app/app_color.dart';
import 'package:first_temp/features/add_debtor/data/models/add_debtor_model.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final AddDebtorForm list;
  final Widget? suffixIcon;
  final String? suffixText;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.list,
    this.suffixIcon,
    this.suffixText,
    this.controller,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.list.onChanged,
      autofocus: widget.list.autofocus ?? false,
      keyboardType: widget.list.keyboardType,
      validator: widget.list.validator,
      enabled: widget.list.enable ?? true,
      style: TextStyle(color: primaryColor(context)),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text(widget.list.lable),
        labelStyle: TextStyle(color: primaryColor(context)),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        suffixIcon: widget.list.suffixIcon,
        suffixText: widget.list.suffixText,
      ),
    );
  }
}

// class CustomTextField extends StatefulWidget {
//   final AddDebtorForm list;
//   final Widget? suffixIcon;
//   final String? suffixText;

//   CustomTextField({
//     super.key,
//     required this.list,
//     this.suffixIcon,
//     this.suffixText,
//     this.controller,
//   });
//   TextEditingController? controller;
//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }

// class _CustomTextFieldState extends State<CustomTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: widget.controller,
//       onChanged: widget.list.onChanged,
//       autofocus: widget.list.autofocus ?? false,
//       keyboardType: widget.list.keyboardType,
//       // keyboardType: TextInputType.phone,
//       validator: widget.list.validator,
//       enabled: widget.list.enable ?? true,
//       style: TextStyle(color: primaryColor(context)),
//       decoration: InputDecoration(
//         border: const OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(20))),
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         label: Text(widget.list.lable),
//         labelStyle: TextStyle(color: primaryColor(context)),
//         disabledBorder: OutlineInputBorder(
//             borderRadius: const BorderRadius.all(
//               Radius.circular(20),
//             ),
//             borderSide: BorderSide(
//               color: Theme.of(context).primaryColor,
//             )),
//         suffixIcon: widget.list.suffixIcon,
//         suffixText: widget.list.suffixText,
//       ),
//     );
//   }
// }
