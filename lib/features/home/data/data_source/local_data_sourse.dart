import 'package:first_temp/features/add_customer/presentation/view/add_debtor_view.dart';
import 'package:first_temp/features/home/data/models/home_buttons_model.dart';
import 'package:first_temp/features/debtor_quere/presentation/view/debtor_quere_view.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

List<HomeButtons> homeButtonsData(context) {
  List<HomeButtons> homeButtons = [
    HomeButtons(
        icon: Icons.person_add,
        title: S.of(context).add_debtor,
        page: AddDebtorView.id),
    HomeButtons(
        icon: Icons.money,
        title: S.of(context).debtor_list,
        page: DebtorQuereView.id),
    // Installment(
    //   icon: Icons.mobile_friendly,
    //   title: "إضافة دين",
    //   // page: AddDebtview.id,
    // ),
  ];

  return homeButtons;
}
