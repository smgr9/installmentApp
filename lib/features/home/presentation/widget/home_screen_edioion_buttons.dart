import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_temp/constent.dart';
import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
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
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            await updateDocument(
                collectionName: "dobtoer",
                documentId: "BuFXDvIx95oJNBK0a84q",
                data: {"name": "جزر"});
          },
          child: const Text("test"),
        ),
      ],
    );
  }
}

Future<void> updateDocument(
    {required String collectionName,
    required String documentId,
    required Map<String, dynamic> data}) async {
  try {
    await FirebaseFirestore.instance
        .collection(collectionName)
        .doc("jfjskdlrioldmadkiold")
        .update(data);
    print("تم تحديث المستند بنجاح");
  } catch (e) {
    print("حدث خطأ أثناء تحديث المستند: $e");
  }
}
