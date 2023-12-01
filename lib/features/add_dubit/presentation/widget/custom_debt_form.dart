import 'package:first_temp/constent.dart';
import 'package:first_temp/core/app/type_def.dart';
import 'package:first_temp/features/add_customer/presentation/widget/custom_material_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_debt_text_field.dart';

class CustomDebtForm extends StatelessWidget {
  const CustomDebtForm(
      {super.key,
      required this.installment,
      this.onPressed,
      this.formKey,
      required this.text});

  final InstallmentRec installment;
  final void Function()? onPressed;
  final GlobalKey<FormState>? formKey;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: formKey,
              child: CustomDebtTextField(
                installment: installment,
              )),
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
