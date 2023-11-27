import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_customer/presentation/manger/writer_debtor/write_debtor_cubit.dart';

import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';

import 'package:flutter/material.dart';

import '../../widget/installer_data_body.dart';

class InstallerDataView extends StatelessWidget {
  final DobterModel installment;
  const InstallerDataView({Key? key, required this.installment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
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

                          WriteDebtorCubit.get(context)
                              .deletDebtToFirebase(installment.fbID);
                          Navigator.pop(con);
                          Navigator.pop(con);
                          ReadDebtorCubit.get(con).getDebtor();
                        },
                        child: const Text("Delete Dobter"),
                      )
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.delete),
          ),
        ],
        title: Text(installment.name.substring(0, 5)),
      ),
      body: InstallerDataBody(
        installment: installment,
      ),
    );
  }
}
