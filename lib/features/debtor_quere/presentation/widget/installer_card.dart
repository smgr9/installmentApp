import 'package:first_temp/features/debtor_quere/presentation/view/screens/installer_data_view.dart';
import 'package:first_temp/features/debtor_quere/presentation/widget/titles_text.dart';
import 'package:first_temp/features/home/data/models/dobter_model.dart';
import 'package:flutter/material.dart';

class InstallerCard extends StatelessWidget {
  const InstallerCard({
    super.key,
    required this.installment,
  });

  final DobterModel installment;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      title: TitlesText(
        text: " ${installment.name}",
        fontSize: 14,
      ),
      titleAlignment: ListTileTitleAlignment.center,
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitlesText(text: "عدد الديون : ${installment.debts.length}"),
        ],
      ),
      leading: const Icon(Icons.person),
      trailing: IconButton(
        icon: const Icon(Icons.arrow_forward_ios_outlined),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return InstallerDataView(
                  installment: installment,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
