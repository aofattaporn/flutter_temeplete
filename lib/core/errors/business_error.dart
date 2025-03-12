abstract class BusinessError {
  final String message;
  final int code = 1899;
  BusinessError(this.message);
}

class ServerFailure extends BusinessError {
  ServerFailure([super.message = "Server Failure"]);
}

class CacheFailure extends BusinessError {
  CacheFailure([super.message = "Cache Failure"]);
}
