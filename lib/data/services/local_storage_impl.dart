
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_todo_app/core/result.dart';
import 'package:task_todo_app/data/services/local_storage.dart';
import 'package:task_todo_app/utils/exceptions.dart';

class LocalStorageImpl implements LocalStorage {

  @override
  Future<Result<void, Exception>> delete(String key) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.remove(key);
      return Sucess(null);
    } catch (e) {
      throw Failure(LocalStorageException('Error deleting key: $key'));
    }
  }

  @override
  Future<Result<String?, Exception>> read(String key) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final data = sharedPreferences.getString(key);
      return Sucess(data);
    } catch (e) {
      return Failure(LocalStorageException('Error reading key: $key'));
    }
  }

  @override
  Future<Result<String, Exception>> save(String key, String value) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString(key, value);
      return Sucess(value);
    } catch (e) {
      return Failure(LocalStorageException('Error saving key: $key'));
    }
  }

  @override
  Future<Result<void, Exception>> clear() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.clear();
      return Sucess(null);
    } catch (e) {
      throw Failure(LocalStorageException('Error clearing storage'));
    }
  }
}