import 'package:dartz/dartz.dart';

abstract class UseCase<F, R, P> {
  Future<Either<F, R>> execute(P param);
}

abstract class UseCaseOptional<F, R, P> {
  Future<Either<F, R>> execute([P param]);
}

abstract class UseCaseWithoutParam<F, R> {
  Future<Either<F, R>> execute();
}
