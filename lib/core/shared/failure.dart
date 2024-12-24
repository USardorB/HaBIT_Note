abstract class Failure {
  final String? msg;

  const Failure({this.msg});
}

class InternalFailure extends Failure {}
