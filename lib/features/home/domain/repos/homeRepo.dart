import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import '../entities/bookEntity.dart';

abstract class homeRepo{

  Future<Either<failure,List<bookEntity>>> fetchFeatureBooks();

  Future<Either<failure,List<bookEntity>>> fetchNewesBooks();




}