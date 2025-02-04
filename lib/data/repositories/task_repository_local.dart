import 'package:task_todo_app/core/result.dart';
import 'package:task_todo_app/data/repositories/task_repository.dart';
import 'package:task_todo_app/domain/models/task.dart';

class TaskRepositoryLocal implements TaskRepository {
  @override
  Result<void, Exception> deleteTask(int id) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Result<Task, Exception> getTask(int ind) {
    // TODO: implement getTask
    throw UnimplementedError();
  }

  @override
  Result<List<Task>, Exception> getTasks() {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  @override
  Result<Task, Exception> updateTasks(Task task) {
    // TODO: implement updateTasks
    throw UnimplementedError();
  }
}