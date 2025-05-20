abstract class Failure {
  final String key;
  const Failure(this.key);
}

class StorageFailure extends Failure {
  const StorageFailure(super.key);
}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure(super.key);
}
