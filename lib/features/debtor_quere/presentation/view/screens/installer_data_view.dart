import 'package:first_temp/core/app/type_def.dart';
import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_customer/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:flutter/material.dart';
import '../../widget/installer_data_body.dart';
import 'custom_del_dialog.dart';

class InstallerDataView extends StatelessWidget {
  final InstallmentRec installment;
  const InstallerDataView({Key? key, required this.installment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CustomDelDialog(installment: installment),
          IconButton(
              onPressed: () {
                WriteDebtorCubit.get(context).updataFirebaseRow();
                Future.delayed(
                  const Duration(seconds: 5),
                  () {
                    ReadDebtorCubit.get(context).getDebtor();
                  },
                );
              },
              icon: const Icon(Icons.upgrade))
        ],
        title: Text(installment.name.substring(0, 5)),
      ),
      body: Stack(
        children: [
          InstallerDataBody(
            preContext: context,
            installment: installment,
          ),
          WriteDebtorCubit.get(context).isLoading
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.white.withOpacity(0.5),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
