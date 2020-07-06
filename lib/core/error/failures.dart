abstract class Failure {
  final String message;

  Failure(this.message);
}

class ValueFailure extends Failure {
  ValueFailure(String message) : super(message);
}

class CacheFailure extends Failure {
  CacheFailure(String message) : super(message);
}

class NoDataFoundFailure extends Failure {
  NoDataFoundFailure(String message) : super(message);
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);
}

class NoInternetConnectionFailure extends Failure {
  NoInternetConnectionFailure(String message) : super(message);
}
