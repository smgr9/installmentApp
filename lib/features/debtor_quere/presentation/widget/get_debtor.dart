import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/debtor_quere/presentation/widget/build_debtor_info.dart';
import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:flutter/material.dart';

class GetDebtorInfo extends StatelessWidget {
  final List<DobterModel> debtor;
  const GetDebtorInfo({Key? key, required this.debtor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => ReadDebtorCubit.get(context).getDebtor(),
      child: ListView.builder(
        itemCount: debtor.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return BuildDebtorInfo(
            debtor: debtor[index],
          );
        },
      ),
    );
  }
}
