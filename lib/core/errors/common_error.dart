abstract class CommonError {
  final String message;
  CommonError(this.message);
}

class ServerFailure extends CommonError {
  ServerFailure([super.message = "Server Failure"]);
}

class CacheFailure extends CommonError {
  CacheFailure([super.message = "Cache Failure"]);
}
