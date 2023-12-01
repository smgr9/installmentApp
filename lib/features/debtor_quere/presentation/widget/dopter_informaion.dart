import 'package:first_temp/core/app/type_def.dart';
import 'package:first_temp/features/debtor_quere/presentation/widget/installer_samiry.dart';
import 'package:flutter/material.dart';
import 'dopter_title.dart';

class DopterInformaion extends StatelessWidget {
  const DopterInformaion({
    super.key,
    required this.installment,
  });
  final InstallmentRec installment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DopterTitle(title: "البيانات الاساسية"),
        InstallerSamiry(installment: installment),
      ],
    );
  }
}
