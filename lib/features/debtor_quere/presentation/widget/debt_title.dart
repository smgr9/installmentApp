import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_dubit/presentation/view/add_debtor.dart';
import 'package:first_temp/features/home/data/models/dobter_model.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';

class DebtTitle extends StatelessWidget {
  const DebtTitle({
    super.key,
    required this.installment,
  });

  final DobterModel installment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorManger.white,
        borderRadius: BorderRadius.all(
          Radius.circular(22),
        ),
      ),
      width: double.infinity,
      child: ListTile(
        title: const Center(
          child: Text(
            "قائمة الدين",
            style: TextStyle(fontSize: 30),
          ),
        ),
        leading: const Icon(Icons.safety_check),
        trailing: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return AddDebtview(
                  installment: installment,
                );
              },
            )).then(
              (value) => ReadDebtorCubit.get(context).getDebtor(),
            );
          },
          icon: const Icon(
            Icons.add_box_outlined,
            color: ColorManger.black,
          ),
        ),
      ),
    );
  }
}