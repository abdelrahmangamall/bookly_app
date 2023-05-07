import 'package:dartz/dartz.dart';

import '../errors/failure.dart';

abstract class useCase<Type,Param>{
  Future<Either<failure,Type>> call([Param param]);
}
class noParam{}