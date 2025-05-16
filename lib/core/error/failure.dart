abstract class Failure {
  final String message;
  const Failure(this.message);
}

class StorageFailure extends Failure {
  const StorageFailure(super.message);
}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure(super.message);
}
