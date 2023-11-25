// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:first_temp/features/home/data/models/debt_model/debt_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'dobter_model.g.dart';

@HiveType(typeId: 0)
class DobterModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String data;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String nationalId;
  @HiveField(4)
  final String phone;
  @HiveField(5)
  final String address;
  @HiveField(6)
  final List<DebtModel> debts;

  DobterModel({
    required this.id,
    required this.data,
    required this.name,
    required this.nationalId,
    required this.phone,
    required this.address,
    this.debts = const [],
  });

  DobterModel decrementIndexAtDatabase() {
    return DobterModel(
      id: id - 1,
      data: data,
      name: name,
      nationalId: nationalId,
      phone: phone,
      address: address,
      debts: debts,
    );
  }

  // add
  DobterModel addNewDebt(DebtModel debt) {
    List<DebtModel> newDebt = List.from(debts);
    newDebt.add(debt);
    return _getDebtor(newDebt);
  }

  //del
  DobterModel delDebt(int index) {
    List<DebtModel> debterIndex = List.from(debts);
    debterIndex.removeAt(index);
    return _getDebtor(debterIndex);
  }

  DobterModel _getDebtor(List<DebtModel> newdebt) {
    return DobterModel(
      id: id,
      data: data,
      name: name,
      nationalId: nationalId,
      phone: phone,
      address: address,
      debts: newdebt,
    );
  }

  @override
  String toString() {
    return '''\nInstallmentModel(
      \nid: $id,
      \n data: $data,
      \n name: $name,
    \n nationalId: $nationalId,
    \n phone: $phone,
    \n address: $address,
    \n debts: $debts)
    \n''';
  }
}