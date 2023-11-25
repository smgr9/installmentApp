import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';

import 'package:flutter/material.dart';

class InstallerSamiry extends StatelessWidget {
  final DobterModel installment;
  const InstallerSamiry({Key? key, required this.installment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorManger.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(22),
        ),
      ),
      child: Table(
        children: [
          _customTableRow(columnName: "id", value: "${installment.id}"),
          _customTableRow(columnName: "الاسم", value: installment.name),
          _customTableRow(
              columnName: "تاريخ الإضافة",
              value: installment.data.substring(0, 10)),
          _customTableRow(
              columnName: "الرقم القومي", value: installment.nationalId),
          _customTableRow(columnName: "رقم الهاتف", value: installment.phone),
          _customTableRow(
              columnName: "العنوان",
              value: installment.address.substring(0, 10)),
        ],
      ),
    );
  }

  TableRow _customTableRow(
      {required String columnName, required String value}) {
    return TableRow(
      children: [
        TableCell(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(columnName),
          ),
        ),
        TableCell(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(value),
          ),
        ),
      ],
    );
  }
}
