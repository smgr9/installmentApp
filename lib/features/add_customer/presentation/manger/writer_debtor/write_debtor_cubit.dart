import 'package:first_temp/constent.dart';
import 'package:first_temp/features/home/data/models/debt_model/debt_model.dart';

import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'write_debtor_state.dart';

class WriteDebtorCubit extends Cubit<WriteDebtorState> {
  static WriteDebtorCubit get(BuildContext context) => BlocProvider.of(context);
  WriteDebtorCubit() : super(WriteDebtorInitial());

  final Box box = Hive.box(HiveConstants.installment);
// dobter Data
  // int id = 0;
  // String date = "";
  String name = "";
  String nationalId = "";
  String phone = "";
  String address = "";

  /// Debt DATA
  double totalamount = 0;
  double prepaidExpenses = 0;

//updata bloc data
//=======================================================
// Dobter
  void updataName(String name) {
    this.name = name;
  }

  void updataNationalId(String nationalId) {
    this.nationalId = nationalId;
  }

  void updataPhone(String phone) {
    this.phone = phone;
  }

  void updataAddress(String address) {
    this.address = address;
  }

  //Debt

  void updataTotalamount(double totalamount) {
    this.totalamount = totalamount;
  }

  void updatAprepaidExpenses(double prepaidExpenses) {
    this.prepaidExpenses = prepaidExpenses;
  }

//========================================================

  Future addDobterToFirebase() async {
    var sizeID = await FirebaseFirestore.instance.collection('dobtoer').get();

    await FirebaseFirestore.instance.collection('dobtoer').add({
      'id': sizeID.size + 1 ?? 0,
      'name': name.toString(),
      'phone': phone.toString(),
      'address': address.toString(),
      'nationalId': nationalId.toString(),
      'date': DateTime.now().toString(),
    });
  }

  void addDebtToFirebase() async {
    tryAndCatchBloc(() async {
      CollectionReference dobterCollection =
          FirebaseFirestore.instance.collection('dobtoer');

      await dobterCollection
          .doc("o83BKxN5vbeq6GPVaDUV")
          .collection('debt')
          .add({
        'totalamount': totalamount,
        'prepaidExpenses': prepaidExpenses,
      });
    }, "erorr");
  }

  void deletDebtToFirebase(String? installmentFbID) async {
    tryAndCatchBloc(() async {
      await FirebaseFirestore.instance
          .collection("dobtoer")
          .doc(installmentFbID)
          .delete();
    }, "erorr");
  }

//functions
// =======================================================
//add
//==========
  Future<void> addDebtor() async {
    emit(WriteDebtorLoading());
    try {
      List<DobterModel> installment =
          List.from(box.get(HiveConstants.installmentList, defaultValue: []))
              .cast<DobterModel>();

      installment.add(DobterModel(
        id: installment.length,
        date: DateTime.now().toString(),
        name: name,
        nationalId: nationalId,
        phone: phone,
        address: address,
        // debts: [],
      ));
      await box.put(HiveConstants.installmentList, installment);
      emit(WriteDebtorSuccess());
    } catch (e) {
      emit(WriteDebtorFailure(messeage: "erorr:$e"));
    }
  }

  void delDebtor(int id) {
    tryAndCatchBloc(() {
      List<DobterModel> installment = List.from(box.get(
        HiveConstants.installmentList,
        defaultValue: [],
      )).cast<DobterModel>();

      installment.removeAt(id);

      for (var i = id; i < installment.length; i++) {
        installment[i] = installment[i].decrementIndexAtDatabase();
      }
      box.put(HiveConstants.installmentList, installment);
    }, "erorr in delete doter is:");
  }

  void addDebt(int id) async {
    tryAndCatchBloc(() async {
      List<DobterModel> installment = List.from(box.get(
        HiveConstants.installmentList,
        defaultValue: [],
      )).cast<DobterModel>();

      // print("hi there : ${installment[0].name}");

      installment[id] = installment[id].addNewDebt(
        DebtModel(
          id: installment[id].debts.length,
          date: DateTime.now().toString(),
          product: [],
          prepaidExpenses: prepaidExpenses,
          installment: [],
          totalamount: totalamount,
        ),
      );
      await box.put(HiveConstants.installmentList, installment);
    }, "erorr in add Dept doter is:");
  }

  void delDebt(int installmentId, int debetId) {
    tryAndCatchBloc(() {
      List<DobterModel> installment = List.from(box.get(
        HiveConstants.installmentList,
        defaultValue: [],
      )).cast<DobterModel>();

      installment[installmentId].debts.removeAt(debetId);
      for (var i = debetId; i < installment[installmentId].debts.length; i++) {
        installment[installmentId].debts[i] =
            installment[installmentId].debts[i].decrementIndexAtDatabase();
      }
      // installment[installmentId] = installment[installmentId].delDebt(debetId);
      box.put(HiveConstants.installmentList, installment);
    }, "erorr in add Dept doter is:");
  }

  // draft
  void tryAndCatchBloc(VoidCallback methodToExcute, String messege) {
    emit(WriteDebtorLoading());
    try {
      methodToExcute.call();
      emit(WriteDebtorSuccess());
    } catch (e) {
      emit(WriteDebtorFailure(messeage: "$messege : $e"));
    }
  }
}
