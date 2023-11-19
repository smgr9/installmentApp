part of 'read_cubit.dart';

sealed class ReadState extends Equatable {
  const ReadState();

  @override
  List<Object> get props => [];
}

final class ReadInitial extends ReadState {}

final class ReadLoading extends ReadState {}

final class ReadSuccess extends ReadState {
  final List<WordModel> words;

  const ReadSuccess({required this.words});
}

final class ReadFailure extends ReadState {
  final String message;

  const ReadFailure({required this.message});
}
