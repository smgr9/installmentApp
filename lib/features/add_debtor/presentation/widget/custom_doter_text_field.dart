import 'package:first_temp/constent.dart';
import 'package:first_temp/core/app/validator.dart';
import 'package:first_temp/features/add_debtor/data/models/add_debtor_model.dart';
import 'package:first_temp/features/add_debtor/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:first_temp/features/add_debtor/presentation/widget/custom_form_text.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CustomDoterTextField extends StatelessWidget {
  const CustomDoterTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(gap20),
        ////=========================================
        ////=========================================
        ////=========================================
        CustomTextField(
          list: AddDebtorForm(
              lable: S.of(context).debtor_name,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                BlocProvider.of<WriteDebtorCubit>(context).updataName(value);
                // print(BlocProvider.of<WriteDebtorCubit>(context).name);
              },
              validator: (value) {
                return AppValidation.validateInput(
                  value: value!,
                  min: 4,
                  max: 40,
                  type: AppValidationType.username,
                  context: context,
                );
              },
              autofocus: true),
        ),
        const Gap(gap20),
        ////=========================================
        ////=========================================
        ////=========================================
        CustomTextField(
          list: AddDebtorForm(
              lable: S.of(context).phone_number,
              keyboardType: TextInputType.phone,
              onChanged: (value) =>
                  BlocProvider.of<WriteDebtorCubit>(context).updataPhone(value),
              validator: (value) {
                return AppValidation.validateInput(
                  value: value!,
                  min: 11,
                  max: 13,
                  type: AppValidationType.phone,
                  context: context,
                );
              }),
        ),
        const Gap(gap20),
        ////=========================================
        ////=========================================
        ////=========================================
        CustomTextField(
          list: AddDebtorForm(
              lable: S.of(context).address,
              keyboardType: TextInputType.text,
              onChanged: (value) => BlocProvider.of<WriteDebtorCubit>(context)
                  .updataAddress(value),
              validator: (value) {
                return AppValidation.validateInput(
                  value: value!,
                  min: 4,
                  max: 100,
                  type: AppValidationType.username,
                  context: context,
                );
              }),
        ),
        const Gap(gap20),
        ////=========================================
        ////=========================================
        ////=========================================
        CustomTextField(
          list: AddDebtorForm(
            keyboardType: const TextInputType.numberWithOptions(
                decimal: false, signed: false),
            lable: S.of(context).national_id,
            onChanged: (value) {
              BlocProvider.of<WriteDebtorCubit>(context)
                  .updataNationalId(value);
              // ignore: avoid_print
              // print(BlocProvider.of<WriteDebtorCubit>(context).nationalId);
            },
            validator: (value) {
              return AppValidation.validateInput(
                value: value!,
                min: 14,
                max: 14,
                type: AppValidationType.nationalID,
                context: context,
              );
            },
          ),
        ),
        const Gap(gap20),
      ],
    );
  }
}
