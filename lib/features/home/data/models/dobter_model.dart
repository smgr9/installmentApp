// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:first_temp/features/home/data/models/debt_model.dart';

class DobterModel {
  final int id;
  final String data;
  final String name;
  final String nationalId;
  final String phone;
  final String address;
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
