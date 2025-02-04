import 'package:task_todo_app/core/result.dart';
import 'package:task_todo_app/domain/models/task.dart';

abstract class TaskRepository {
  Result<List<Task>, Exception> getTasks();
  Result<Task, Exception> getTask(int ind);
  Result<Task, Exception> updateTasks(Task task);
  Result<void, Exception> deleteTask(int id);
}