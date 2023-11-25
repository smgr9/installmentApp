import 'package:first_temp/constent.dart';
import 'package:first_temp/features/add_customer/presentation/widget/custom_material_button.dart';
import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_debt_text_field.dart';

class CustomDebtForm extends StatelessWidget {
  final DobterModel installmentModel;
  final void Function()? onPressed;
  final GlobalKey<FormState>? formKey;
  final String text;
  const CustomDebtForm({
    super.key,
    this.onPressed,
    required this.text,
    this.formKey,
    required this.installmentModel,
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
              child: CustomDebtTextField(
                installmentModel: installmentModel,
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
