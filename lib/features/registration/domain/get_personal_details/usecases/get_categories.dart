import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../data/get_personal_details/models/category_model.dart';
import '../get_personal_details_repo.dart';

class GetCategories {
  final GetPersonalDetailsRepo repository;

  GetCategories(this.repository);

  Future<Either<Failure, List<CategoryModel>>> call() async {
    return await repository.getCategories();
  }
}
