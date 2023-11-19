import 'package:first_temp/features/add_customer/presentation/widget/add_debtor_body.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

class AddDebtorView extends StatelessWidget {
  const AddDebtorView({Key? key}) : super(key: key);
  static String id = "/addCustomer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).add_debtor),
      ),
      body: const AddDebtorBody(),
    );
  }
}
