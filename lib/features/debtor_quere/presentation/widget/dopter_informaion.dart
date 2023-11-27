import 'package:first_temp/features/debtor_quere/presentation/widget/installer_samiry.dart';
import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:flutter/material.dart';
import 'dopter_title.dart';

class DopterInformaion extends StatelessWidget {
  const DopterInformaion({
    super.key,
    required this.installment,
  });

  final DobterModel installment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Hero(
            tag: "gazer1", child: DopterTitle(title: "البيانات الاساسية")),
        InstallerSamiry(installment: installment),
      ],
    );
  }
}
