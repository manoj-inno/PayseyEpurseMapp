import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../../core/usecase/core_usecase.dart';
import '../entities/generate_reference_entity.dart';
import '../register_reference_repo.dart';

class GenerateReferenceUseCase
    extends CoreUseCase<UseCaseParams, Either<Failure, GenerateReference>> {
  final RegisterReferenceRepo registerReferenceRepo;

  GenerateReferenceUseCase(this.registerReferenceRepo);

  @override
  Future<Either<Failure, GenerateReference>> execute(
      UseCaseParams params) async {
    final mobile = params['mobile'] as String;
    final userTypeId = params['userTypeId'] as int;
    return await registerReferenceRepo.generateReference(mobile, userTypeId);
  }
}
