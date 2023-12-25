part of 'read_debtor_cubit.dart';

abstract class ReadDebtorState {}

final class ReadDebtorInitial extends ReadDebtorState {}

final class ReadDebtorLoading extends ReadDebtorState {}

final class ReadDebtorSuccess extends ReadDebtorState {
  final List<InstallmentRec> installment;

  ReadDebtorSuccess({required this.installment});
}

final class ReadDebtorFailure extends ReadDebtorState {
  final String message;

  ReadDebtorFailure(this.message);
}
