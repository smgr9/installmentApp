import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:flutter/material.dart';

Future<void> refreshDataFormFB(BuildContext perContext) async {
  await Future.delayed(
    const Duration(milliseconds: 200),
    () {
      ReadDebtorCubit.get(perContext).getDebtor();
    },
  );
}