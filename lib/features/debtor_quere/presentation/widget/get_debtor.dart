import 'package:first_temp/core/app/app_functions.dart';
import 'package:first_temp/core/app/type_def.dart';
import 'package:first_temp/features/debtor_quere/presentation/widget/build_debtor_info.dart';
import 'package:flutter/material.dart';

class GetDebtorInfo extends StatefulWidget {
  final List<InstallmentRec> installment;
  final BuildContext parentContext;

  const GetDebtorInfo(
      {super.key,
      required this.installment,
      required this.parentContext}); // إضافة معامل لتمرير context

  @override
  // ignore: library_private_types_in_public_api
  _GetDebtorInfoState createState() => _GetDebtorInfoState();
}

class _GetDebtorInfoState extends State<GetDebtorInfo> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      onRefresh: () =>
          refreshDataFormFB(widget.parentContext), // تمرير context هنا
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverList.builder(
            itemCount: widget.installment.length,
            itemBuilder: (context, index) {
              return BuildDebtorInfo(
                installment: widget.installment[index],
              );
            },
          )
        ],
      ),
    );
  }
}
