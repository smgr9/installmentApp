import 'package:first_temp/constent.dart';
import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/test/presentation/view/test_app.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreenEdioionButtons extends StatelessWidget {
  const HomeScreenEdioionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: ElevatedButton(
            onPressed: () {
              Hive.box(HiveConstants.installment).clear();
              ReadDebtorCubit.get(context).getDebtor();
            },
            child: const Text("clear"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: ElevatedButton(
            onPressed: () {
              // List<InstallmentModel> i = Hive.box(HiveConstants.installment)
              //     .get(HiveConstants.installmentList,
              //         defaultValue: []).cast<InstallmentModel>();
              // print(i.toString());
            },
            child: const Text("get"),
          ),
        ),
        // const SizedBox(height: 10),
        // ElevatedButton(
        //   onPressed: () {
        //     Navigator.of(context).pushNamed(TestApp.id);
        //   },
        //   child: const Text("test"),
        // ),
      ],
    );
  }
}
