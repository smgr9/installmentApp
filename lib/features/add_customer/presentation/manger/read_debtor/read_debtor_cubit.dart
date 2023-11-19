import 'package:first_temp/constent.dart';
import 'package:first_temp/features/home/data/models/dobter_model.dart';
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
      List<DobterModel> debetorData =
          List.from(box.get(HiveConstants.installmentList, defaultValue: []))
              .cast<DobterModel>();

      emit(ReadDebtorSuccess(installmentModel: debetorData));
    } catch (e) {
      emit(ReadDebtorFailure("erorr : $e"));
    }
  }
}
