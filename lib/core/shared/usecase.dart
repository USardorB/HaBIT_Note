import 'package:dartz/dartz.dart';
import 'failure.dart' show Failure;

abstract class Usecase<RETURN, INPUT> {
  Future<Either<Failure, RETURN>> call({required INPUT param});
}
