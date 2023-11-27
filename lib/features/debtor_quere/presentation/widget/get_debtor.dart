import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/debtor_quere/presentation/widget/build_debtor_info.dart';
import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:flutter/material.dart';

class GetDebtorInfo extends StatefulWidget {
  final List<DobterModel> debtor;
  final BuildContext parentContext; // إضافة معامل لتمرير context

  const GetDebtorInfo(
      {Key? key, required this.debtor, required this.parentContext})
      : super(key: key);

  @override
  _GetDebtorInfoState createState() => _GetDebtorInfoState();
}

class _GetDebtorInfoState extends State<GetDebtorInfo> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      onRefresh: () => _refresh(widget.parentContext), // تمرير context هنا
      child: CustomScrollView(
        slivers: [
          SliverList.builder(
            itemCount: widget.debtor.length,
            itemBuilder: (context, index) {
              return BuildDebtorInfo(
                debtor: widget.debtor[index],
              );
            },
          )
        ],
      ),
    );
  }

  Future<void> _refresh(BuildContext context) async {
    ReadDebtorCubit.get(context).getDebtor();
    // يمكنك استخدام context هنا للتفاعل مع الـ ReadDebtorCubit أو أي شيء آخر يتطلب context
    print("Refreshed");
  }
}
