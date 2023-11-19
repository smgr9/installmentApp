import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_customer/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:first_temp/features/home/data/models/dobter_model.dart';
import 'package:flutter/material.dart';
import 'debt_data_viewer.dart';
import 'dopter_informaion.dart';

class InstallerDataBody extends StatelessWidget {
  const InstallerDataBody({Key? key, required this.installment})
      : super(key: key);
  final DobterModel installment;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // basic informaion
            //************************************/
            //************************************/
            DopterInformaion(installment: installment),
            const SizedBox(height: 10),

            // debt informaion
            //************************************/
            //************************************/

            DebtDataViewer(installment: installment),

            //************************************/
            //************************************/
            // const SizedBox(height: 10),
            // ElevatedButton(
            //   child: const Text("add  Debit"),
            //   onPressed: () {
            //     WriteDebtorCubit.get(context).addDebt(installment.id);
            //     ReadDebtorCubit.get(context).getDebtor();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
