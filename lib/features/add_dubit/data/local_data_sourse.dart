import 'package:first_temp/features/add_customer/presentation/view/add_debtor_view.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../add_customer/data/models/add_debtor_model.dart';

List addDebt(context) {
  List<AddDebtorForm> x = [
    AddDebtorForm(lable: "adubt id", enable: false),
    AddDebtorForm(lable: S.of(context).add_date, enable: false),
    AddDebtorForm(
        lable: S.of(context).debtor_id,
        suffixIcon: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AddDebtorView.id);
          },
          icon: const Icon(Icons.add),
        ),
        suffixText: "اضف دائن"),
    AddDebtorForm(lable: S.of(context).debtor_name),
    AddDebtorForm(lable: "بيان الدين"),
    AddDebtorForm(lable: "إجمالي قيمة الدين"),
    AddDebtorForm(lable: "المقدم"),
    AddDebtorForm(lable: "فتره السداد"),
    AddDebtorForm(lable: "إجمالي ما تبقى من الدين"),
  ];
  return x;
}



    // AddDebtor(lable: S.of(context).debtor_id, enable: false),
    // AddDebtor(lable: S.of(context).add_date, enable: false),
    // AddDebtor(lable: S.of(context).debtor_name),
    // AddDebtor(lable: S.of(context).phone_number),
    // AddDebtor(lable: S.of(context).national_id),