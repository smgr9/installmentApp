import 'package:first_temp/features/home/data/models/dobter_model.dart';

import 'package:flutter/material.dart';

import 'installer_card.dart';

class BuildDebtorInfo extends StatelessWidget {
  final DobterModel debtor;

  const BuildDebtorInfo({
    super.key,
    required this.debtor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
      child: Card(
        color: debtor.id.isOdd ? Colors.amber : Colors.blue,
        child: InstallerCard(
          installment: debtor,
        ),
      ),
    );
  }
}
