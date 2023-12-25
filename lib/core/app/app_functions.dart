import 'package:first_temp/features/add_debtor/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:flutter/material.dart';

Future<void> refreshDataFormFB(BuildContext perContext) async {
  Future.delayed(
    const Duration(milliseconds: 200),
    () {
      ReadDebtorCubit.get(perContext).getDebtor();
    },
  );
}
