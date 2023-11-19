part of 'write_debtor_cubit.dart';

abstract class WriteDebtorState {
  const WriteDebtorState();
}

final class WriteDebtorInitial extends WriteDebtorState {}

final class WriteDebtorLoading extends WriteDebtorState {}

final class WriteDebtorSuccess extends WriteDebtorState {
  // final List<InstallmentModel> installment;
  // WriteDebtorSuccess({required this.installment});
}

final class WriteDebtorFailure extends WriteDebtorState {
  final String messeage;

  WriteDebtorFailure({required this.messeage});
}
