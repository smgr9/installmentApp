import 'package:first_temp/features/add_debtor/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'get_debtor.dart';
import 'get_empty_list.dart';
import 'get_failure_state.dart';
import 'get_loading_state.dart';

class DebtorQuereBody extends StatelessWidget {
  const DebtorQuereBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadDebtorCubit, ReadDebtorState>(
      builder: (context, state) {
        if (state is ReadDebtorSuccess) {
          // ignore: avoid_print
          print(state.installment);
          if (state.installment.isEmpty) {
            return GetEmptyList(
              parentContext: context,
            );
          }
          return GetDebtorInfo(
            installment: state.installment,
            parentContext: context,
          );
        } else if (state is ReadDebtorFailure) {
          return GetFailureState(
            message: state.message,
            perContext: context,
          );
        } else {
          return const GetLoadingState();
        }
      },
    );
  }
}
