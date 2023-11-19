part of 'write_cubit.dart';

abstract class WriteState {
  const WriteState();
}

final class WriteInitial extends WriteState {}

final class WriteLoading extends WriteState {}

final class WriteSuccess extends WriteState {}

final class WriteFailur extends WriteState {
  final String message;

  const WriteFailur({required this.message});
}
