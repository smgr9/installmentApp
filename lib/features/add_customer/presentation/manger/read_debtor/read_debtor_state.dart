part of 'read_debtor_cubit.dart';

abstract class ReadDebtorState {}

final class ReadDebtorInitial extends ReadDebtorState {}

final class ReadDebtorLoading extends ReadDebtorState {}

final class ReadDebtorSuccess extends ReadDebtorState {
  final List<DobterModel> installmentModel;

  ReadDebtorSuccess({required this.installmentModel});
}

final class ReadDebtorFailure extends ReadDebtorState {
  final String message;

  ReadDebtorFailure(this.message);
}
