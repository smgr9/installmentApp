import 'package:first_temp/constent.dart';
import 'package:first_temp/features/add_customer/presentation/widget/custom_material_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_doter_text_field.dart';

class CustomForm extends StatelessWidget {
  final void Function()? onPressed;
  final GlobalKey<FormState>? formKey;
  final String text;
  const CustomForm({
    super.key,
    this.onPressed,
    required this.text,
    this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: formKey,
              child: const CustomDoterTextField()),
        ),
        const Gap(gap20),
        CustomMaterialButton(
          text: text,
          onPressed: onPressed,
        ),
        const Gap(gap20),
      ],
    );
  }
}
