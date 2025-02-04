import 'package:task_todo_app/core/result.dart';

abstract class LocalStorage {
  Future<Result<String, Exception>> save(String key, String value);
  Future<Result<String?, Exception>> read(String key);
  Future<Result<void, Exception>> delete(String key);
  Future<Result<void, Exception>> clear();
}