import 'package:first_temp/constent.dart';
import 'package:first_temp/features/add_customer/data/models/add_debtor_model.dart';
import 'package:first_temp/features/add_customer/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:first_temp/features/add_customer/presentation/widget/custom_form_text.dart';
import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomDebtTextField extends StatelessWidget {
  final DobterModel installmentModel;
  const CustomDebtTextField({
    super.key,
    required this.installmentModel,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

    TextEditingController debtorNameController = TextEditingController();
    debtorNameController.text = installmentModel.name;
    return Column(
      children: [
        const Gap(gap20),
        CustomTextField(
          controller: debtorNameController,
          list: AddDebtorForm(
            lable: S.of(context).debtor_name,
            enable: false,
          ),
        ),
        const Gap(gap20),
        CustomTextField(
          controller: textEditingController,
          list: AddDebtorForm(
            lable: "بيان الدين",
          ),
        ),
        const Gap(gap20),
        CustomTextField(
          list: AddDebtorForm(
            lable: "إجمالي قيمة الدين",
            onChanged: (value) {
              WriteDebtorCubit.get(context)
                  .updataTotalamount(double.parse(value));
            },
          ),
        ),
        const Gap(gap20),
        CustomTextField(
          list: AddDebtorForm(
            lable: "المقدم",
            onChanged: (value) {
              WriteDebtorCubit.get(context)
                  .updatAprepaidExpenses(double.parse(value));
            },
          ),
        ),
        const Gap(gap20),
        CustomTextField(
          list: AddDebtorForm(lable: "فتره السداد"),
        ),
        const Gap(gap20),
        CustomTextField(
          list: AddDebtorForm(lable: "إجمالي ما تبقى من الدين"),
        ),
        const Gap(gap20),
      ],
    );
  }
}
