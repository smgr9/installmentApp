import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_temp/constent.dart';
import 'package:first_temp/core/app/type_def.dart';
import 'package:first_temp/features/home/data/models/debt_model/debt_model.dart';
import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'read_debtor_state.dart';

class ReadDebtorCubit extends Cubit<ReadDebtorState> {
  static ReadDebtorCubit get(context) => BlocProvider.of(context);
  ReadDebtorCubit() : super(ReadDebtorInitial());
  final Box box = Hive.box(HiveConstants.installment);

  Future<void> getDebtor() async {
    emit(ReadDebtorLoading());
    try {
      // throw Exception();
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('dobtoer')
          .orderBy("id")
          .get();

      List<DobterModel> dobters = [];

      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        Map<String, dynamic> dobterData = doc.data() as Map<String, dynamic>;

        // جلب بيانات الديون لكل dobter
        QuerySnapshot debtSnapshot =
            await doc.reference.collection('debt').orderBy("id").get();

        List<DebtModel> debts = debtSnapshot.docs.map((debtDoc) {
          Map<String, dynamic> debtData =
              debtDoc.data() as Map<String, dynamic>;
          // إنشاء نموذج DebtModel باستخدام البيانات من Firebase
          return DebtModel(
            prepaidExpenses: debtData["prepaidExpenses"],
            totalamount: debtData['totalamount'],
            installment: [],
            product: [],
            date: debtData['date'] ?? "null",
            id: debtData['id'],

            // قم بتكملة هذا بناءً على هيكلة بيانات الدين في Firebase
          );
        }).toList();

        // إنشاء نموذج DobterModel باستخدام البيانات من Firebase
        DobterModel dobter = DobterModel(
          id: dobterData['id'],
          fbID: doc.id,
          date: dobterData['date'].toString(),
          name: dobterData['name'].toString(),
          nationalId: dobterData['nationalId'].toString(),
          phone: dobterData['phone'].toString(),
          address: dobterData['address'].toString(),
          debts: debts, // قائمة الديون
          test: dobterData['testMap'],
        );

        dobters.add(dobter);
      }

      List<
          ({
            String address,
            String date,
            List<DebtModel> debts,
            String fbID,
            dynamic id,
            String name,
            String nationalId,
            String phone,
            dynamic test
          })> getData = [];
      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        Map<String, dynamic> dobterData = doc.data() as Map<String, dynamic>;

        // جلب بيانات الديون لكل dobter
        QuerySnapshot debtSnapshot =
            await doc.reference.collection('debt').orderBy("id").get();

        List<DebtModel> debts = debtSnapshot.docs.map((debtDoc) {
          Map<String, dynamic> debtData =
              debtDoc.data() as Map<String, dynamic>;
          // إنشاء نموذج DebtModel باستخدام البيانات من Firebase
          return DebtModel(
            prepaidExpenses: debtData["prepaidExpenses"],
            totalamount: debtData['totalamount'],
            installment: [],
            product: [],
            date: debtData['date'] ?? "null",
            id: debtData['id'],

            // قم بتكملة هذا بناءً على هيكلة بيانات الدين في Firebase
          );
        }).toList();

        // إنشاء نموذج DobterModel باستخدام البيانات من Firebase
        // DobterModel dobter = DobterModel(
        //   id: dobterData['id'],
        //   fbID: doc.id,
        //   date: dobterData['date'].toString(),
        //   name: dobterData['name'].toString(),
        //   nationalId: dobterData['nationalId'].toString(),
        //   phone: dobterData['phone'].toString(),
        //   address: dobterData['address'].toString(),
        //   debts: debts, // قائمة الديون
        //   test: dobterData['testMap'],
        // );

        InstallmentRec docData = (
          id: dobterData['id'],
          fbID: doc.id,
          date: dobterData['date'].toString(),
          name: dobterData['name'].toString(),
          nationalId: dobterData['nationalId'].toString(),
          phone: dobterData['phone'].toString(),
          address: dobterData['address'].toString(),
          debts: debts, // قائمة الديون
          test: dobterData['testMap'],
        );

        getData.add(docData);
      }

      emit(ReadDebtorSuccess(installment: getData));
    } catch (e) {
      emit(ReadDebtorFailure("Error: $e"));
    }
  }

//   Future<void> getDebtor() async {
//     emit(ReadDebtorLoading());
//     try {
//       // List<DobterModel> debetorData =
//       //     List.from(box.get(HiveConstants.installmentList, defaultValue: []))
//       //         .cast<DobterModel>();

//       QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//           .collection('dobtoer')
//           .orderBy("id")
//           .get();

//       List<DobterModel> dobters = querySnapshot.docs.map((doc) {
//         Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
//         // استخدام بيانات Firebase لإنشاء نموذج DobterModel
//         return DobterModel(
//           id: data['id'],
//           fbID: doc.id,
//           date: data['date'].toString(),
//           name: data['name'].toString(),
//           nationalId: data['nationalId'].toString(),
//           phone: data['phone'].toString(),
//           address: data['address'].toString(),
//           // debts: DebtModel(
//           //   installment: installment,
//           //   product: product,
//           //   prepaidExpenses: prepaidExpenses,
//           //   totalamount: totalamount,
//           // ),
//           // قد تحتاج إلى تحويل البيانات الإضافية مثل الديون (debts) إلى نماذج مناسبة
//         );
//       }).toList();

//       emit(ReadDebtorSuccess(installmentModel: dobters));
//     } catch (e) {
//       emit(ReadDebtorFailure("eror11r : $e"));
//     }
//   }

//   Future<void> fetchData() async {
//     try {
//       QuerySnapshot querySnapshot =
//           await FirebaseFirestore.instance.collection('dobtoer').get();

//       // for (QueryDocumentSnapshot documentSnapshot in querySnapshot.docs) {

//       // }

// // قم بتحويل الوثائق إلى قائمة من نماذج DobterModel
//     } catch (e) {
//       print("حدث خطأ أثناء استرجاع البيانات: $e");
//     }
//   }
}
