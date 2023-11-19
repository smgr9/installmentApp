import 'package:first_temp/core/app/validator.dart';
import 'package:first_temp/features/add_customer/data/models/add_debtor_model.dart';
import 'package:first_temp/features/add_customer/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List addDebtor(BuildContext context) {
  List<AddDebtorForm> addDebtor = [
    //============================================================
    //id
    //============================================================
    // AddDebtorForm(
    //   lable: S.of(context).debtor_id,
    //   // onChanged: (value) {
    //   //   WriteDebtorCubit.get(context).updataName(name);
    //   // },
    //   keyboardType: TextInputType.number,
    //   enable: false,
    //   validator: (value) {
    //     return null;
    //   },
    // ),
    //============================================================
    //data time
    //============================================================
    // AddDebtorForm(
    //   lable: S.of(context).add_date,
    //   onChanged: (value) =>
    //       BlocProvider.of<WriteDebtorCubit>(context).updatdata(value),
    //   keyboardType: TextInputType.datetime,
    //   enable: false,
    //   validator: (value) {
    //     return null;
    //   },
    // ),
    //============================================================
    // name
    //============================================================
    AddDebtorForm(
        lable: S.of(context).debtor_name,
        keyboardType: TextInputType.text,
        onChanged: (value) {
          BlocProvider.of<WriteDebtorCubit>(context).updataName(value);
          // print(BlocProvider.of<WriteDebtorCubit>(context).name);
        },
        validator: (value) {
          return AppValidation.validateInput(
            value: value!,
            min: 8,
            max: 40,
            type: AppValidationType.username,
            context: context,
          );
        },
        autofocus: true),
    //============================================================
    //phone Number
    //============================================================
    AddDebtorForm(
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
    //============================================================
    //naionail ID
    //============================================================
    AddDebtorForm(
      keyboardType:
          const TextInputType.numberWithOptions(decimal: false, signed: false),
      lable: S.of(context).national_id,
      onChanged: (value) {
        BlocProvider.of<WriteDebtorCubit>(context).updataNationalId(value);
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
  ];
  return addDebtor;
}
