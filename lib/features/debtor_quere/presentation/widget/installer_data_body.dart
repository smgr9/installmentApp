import 'package:first_temp/core/app/app_functions.dart';
import 'package:first_temp/core/app/type_def.dart';
import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/debtor_quere/presentation/widget/debt_title.dart';
import 'package:first_temp/features/debtor_quere/presentation/widget/list_of_debt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dopter_informaion.dart';

class InstallerDataBody extends StatelessWidget {
  const InstallerDataBody(
      {Key? key, required this.installment, required this.preContext})
      : super(key: key);
  final InstallmentRec installment;
  final BuildContext preContext;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => refreshDataFormFB(preContext),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            // dobter informaion
            //************************************/
            //************************************/
            SliverToBoxAdapter(
                child: DopterInformaion(installment: installment)),
            const SliverToBoxAdapter(child: SizedBox(height: 30)),

            // debt informaion
            //************************************/
            //************************************/
            SliverToBoxAdapter(child: DebtTitle(installment: installment)),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            BlocBuilder<ReadDebtorCubit, ReadDebtorState>(
              builder: (context, state) {
                if (state is ReadDebtorSuccess) {
                  if (state.installment[installment.id].debts.isEmpty) {
                    return const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Empty Debt",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    );
                  } else {
                    return BuildDebtView(
                        installment: state.installment[installment.id]);
                  }
                } else if (state is ReadDebtorFailure) {
                  return SliverToBoxAdapter(
                      child: Center(
                    child: Text(state.message),
                  ));
                } else {
                  return const SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BuildDebtView extends StatelessWidget {
  const BuildDebtView({
    super.key,
    required this.installment,
  });

  final InstallmentRec installment;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: installment.debts.length,
          (context, index) {
        // return
        // Card(
        //   color: ColorManger.white,
        //   child: ListTile(
        //     title: Text(installment.debts[index].id.toString()),
        //     subtitle: Text(installment.debts[index].date.toString()),
        //   ),
        // );
        return ListofDebtItem(
          debt: installment.debts[index],
          installment: installment,
        );
      }),
    );
  }
}
