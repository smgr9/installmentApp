import 'package:first_temp/core/app/app_color.dart';
import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/debtor_quere/presentation/widget/get_failure_state.dart';
import 'package:first_temp/features/home/data/models/debt_model/debt_model.dart';
import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'build_debt_list_view.dart';
import 'debt_title.dart';

class DebtDataViewer extends StatelessWidget {
  const DebtDataViewer({
    super.key,
    required this.installment,
  });

  final DobterModel installment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DebtTitle(installment: installment),
        BlocBuilder<ReadDebtorCubit, ReadDebtorState>(
          builder: (context, state) {
            if (state is ReadDebtorSuccess) {
              if (state.installmentModel.isEmpty) {
                return Text(
                  "empty List",
                  style: TextStyle(color: primaryColor(context)),
                );
              }
              return GetDebtSuccess(
                installment: state.installmentModel[installment.id],
                debt: state.installmentModel[installment.id].debts,
              );
            } else if (state is ReadDebtorFailure) {
              return GetFailureState(message: state.message);
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ],
    );
  }
}

class GetDebtSuccess extends StatelessWidget {
  const GetDebtSuccess({
    super.key,
    required this.installment,
    this.debt,
  });

  final DobterModel installment;
  final List<DebtModel>? debt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildDebtListView(
          installment: installment,
        )
      ],
    );
  }
}
