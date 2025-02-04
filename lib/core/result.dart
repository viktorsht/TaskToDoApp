sealed class Result<TSucess, TFailure> {
  Future<TSucess?> getOrNull() async {
    if (this is Sucess) {
      return (this as Sucess)._value;
    }
    return null;
  }

  Future<TFailure?> getOrNullFailure() async {
    if (this is Failure) {
      return (this as Failure)._value;
    }
    return null;
  }

  Future<T> fold<T>(
      Future<T> Function(TSucess) onSucess,
      Future<T> Function(TFailure) onFailure) async {
    if (this is Sucess) {
      return await onSucess((this as Sucess)._value);
    } else {
      return await onFailure((this as Failure)._value);
    }
  }
}

class Sucess<TSucess, TFailure> extends Result<TSucess, TFailure> {
  final TSucess _value;

  Sucess(this._value);
}

class Failure<TSucess, TFailure> extends Result<TSucess, TFailure> {
  final TFailure _value;

  Failure(this._value);
}