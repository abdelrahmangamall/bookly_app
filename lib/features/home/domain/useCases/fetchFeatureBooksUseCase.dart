import 'package:bookly_app/features/home/domain/repos/homeRepo.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/useCases/useCase.dart';
import '../entities/bookEntity.dart';

class fetchFeatureBooksUseCase extends useCase<List<bookEntity>, noParam>{
  final homeRepo HomeRepo;

  fetchFeatureBooksUseCase(this.HomeRepo);

  @override
  Future<Either<failure,List<bookEntity>>> call([noParam? param]) async {
  return await HomeRepo.fetchFeatureBooks();
  }

}

