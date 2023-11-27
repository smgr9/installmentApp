import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_temp/constent.dart';
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
      // List<DobterModel> debetorData =
      //     List.from(box.get(HiveConstants.installmentList, defaultValue: []))
      //         .cast<DobterModel>();

      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('dobtoer').get();

      List<DobterModel> dobters = querySnapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        // استخدام بيانات Firebase لإنشاء نموذج DobterModel
        return DobterModel(
          id: data['id'],
          fbID: doc.id,
          date: data['date'].toString(),
          name: data['name'].toString(),
          nationalId: data['nationalId'].toString(),
          phone: data['phone'].toString(),
          address: data['address'].toString(),
          // قد تحتاج إلى تحويل البيانات الإضافية مثل الديون (debts) إلى نماذج مناسبة
        );
      }).toList();

      emit(ReadDebtorSuccess(installmentModel: dobters));
    } catch (e) {
      emit(ReadDebtorFailure("eror11r : $e"));
    }
  }

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
