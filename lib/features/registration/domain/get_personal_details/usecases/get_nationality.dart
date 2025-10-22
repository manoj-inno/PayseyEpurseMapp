import 'package:dartz/dartz.dart';
import 'package:epurse/features/registration/domain/get_personal_details/get_personal_details_repo.dart';

import '../../../../../core/errors/failures.dart';
import '../entities/nationality_entity.dart';

class GetNationality {
  final GetPersonalDetailsRepo repository;

  GetNationality({required this.repository});

  Future<Either<Failure, List<NationalityEntity>>> call() async {
    return repository.getNationalities();
  }
}
