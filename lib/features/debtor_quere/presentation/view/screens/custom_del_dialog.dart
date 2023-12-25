import 'package:first_temp/core/app/type_def.dart';
import 'package:first_temp/features/add_debtor/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_debtor/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:flutter/material.dart';

class CustomDelDialog extends StatelessWidget {
  const CustomDelDialog({
    super.key,
    required this.installment,
  });

  final InstallmentRec installment;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (con) {
            return AlertDialog(
              title: const Text("Alert"),
              content: const Text("Do you want to Delete Dobter?"),
              actions: [
                TextButton(
                  onPressed: () {
                    // حفظ BuildContext المحلي

                    WriteDebtorCubit.get(context).deletDobterFromFirebase(
                        installment.fbID, installment.id);

                    Future.delayed(
                      const Duration(seconds: 5),
                      () {
                        Navigator.pop(con);
                        Navigator.pop(con);
                        ReadDebtorCubit.get(con).getDebtor();
                      },
                    );
                  },
                  child: const Text("Delete Dobter"),
                )
              ],
            );
          },
        );
      },
      icon: const Icon(Icons.delete),
    );
  }
}
