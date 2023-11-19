import 'package:first_temp/test/presentation/manger/write/write_cubit.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';

class CustomFormFiled extends StatefulWidget {
  final String lable;
  final GlobalKey<FormState> formKey;

  const CustomFormFiled({Key? key, required this.lable, required this.formKey})
      : super(key: key);

  @override
  State<CustomFormFiled> createState() => _CustomFormFiledState();
}

class _CustomFormFiledState extends State<CustomFormFiled> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: widget.formKey,
      child: TextFormField(
        autofocus: true,
        onChanged: (value) {
          WriteCubit.get(context).updataText(value);
        },
        validator: (value) {
          return _validator(
            value,
            WriteCubit.get(context).isArabic,
          );
        },
        controller: textEditingController,
        maxLines: 2,
        minLines: 1,
        cursorColor: ColorManger.white,
        style: const TextStyle(color: ColorManger.white),
        decoration: InputDecoration(
          enabledBorder: _getInputDecoration(ColorManger.white),
          focusedBorder: _getInputDecoration(ColorManger.white),
          errorBorder: _getInputDecoration(Colors.red),
          focusedErrorBorder: _getInputDecoration(Colors.red),
          label: Text(widget.lable),
          labelStyle: const TextStyle(color: ColorManger.white),
          // floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }

  String? _validator(String? value, bool isArabic) {
    if (value == null || value.trim().isEmpty) {
      return "this field Has not to be empty";
    }
    for (var i = 0; i < value.length; i++) {
      CharType charType = _getCharType(value.codeUnitAt(i));
      if (charType == CharType.notvalid) {
        return "char Number ${i + 1} not Valid";
      } else if (charType == CharType.arabic && isArabic == false) {
        return "char number  ${i + 1} is not english char";
      } else if (charType == CharType.english && isArabic == true) {
        return "char number  ${i + 1} is not arabic char";
      }
    }
    return null;
  }

  CharType _getCharType(int assciiCode) {
    if ((assciiCode >= 65 && assciiCode <= 90) ||
        (assciiCode >= 97 && assciiCode <= 122)) {
      return CharType.english;
    } else if (assciiCode >= 1569 && assciiCode <= 1610) {
      return CharType.arabic;
    } else if (assciiCode == 32) {
      return CharType.space;
    }
    return CharType.notvalid;
  }

  OutlineInputBorder _getInputDecoration(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: color,
          width: 2,
        ));
  }
}

enum CharType { arabic, english, space, notvalid }
