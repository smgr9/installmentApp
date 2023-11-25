import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:first_temp/features/firebase_home_data/data/models/task_model.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(const TaskState()) {
    on<AddTask>(_onAddTask);
    on<UpdataTask>(_onUpdataTask);
    on<DeleteTask>(_onDeleteTask);
  }
  void _onUpdataTask(UpdataTask event, Emitter<TaskState> emitter) {}
  void _onDeleteTask(DeleteTask event, Emitter<TaskState> emitter) {}
  void _onAddTask(AddTask event, Emitter<TaskState> emitter) {
    final state = this.state;
    emit(
      TaskState(
        allTask: List.from(state.allTask)..add(event.task),
      ),
    );
  }
}
