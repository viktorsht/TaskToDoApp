import 'package:task_todo_app/core/result.dart';

abstract class TaskRepository {
  Result<List<Task>, Exception> getTasks();
  Result<Task, Exception> getTask(int ind);
  Result<Task, Exception> updateTasks(Task task);
  Result<void, Exception> getTasks(int id);
}