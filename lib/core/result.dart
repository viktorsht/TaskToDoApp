sealed class Result <TSucess, TFailure> {
  
  TSucess? getOrNull(){
    if(this is Sucess) return (this as Sucess)._value;
    return null;
  }

  TFailure? getOrNullFailure(){
    if(this is Failure) return (this as Failure)._value;
    return null;
  }


}

class Sucess<TSucess, TFailure> extends Result<TSucess, TFailure> {
  final TSucess _value;

  Sucess(this._value);
}

class Failure<TSucess, TFailure> extends Result<TSucess, TFailure> {
  final TSucess _value;

  Failure(this._value);
}