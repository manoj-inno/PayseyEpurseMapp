import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failures.dart';
import '../../../../../core/usecase/core_usecase.dart';
import '../entities/check_mobile_entity.dart';
import '../register_reference_repo.dart';

class CheckMobile
    extends CoreUseCase<String, Either<Failure, MobileCheckEntity>> {
  final RegisterReferenceRepo repository;

  CheckMobile(this.repository);

  @override
  Future<Either<Failure, MobileCheckEntity>> execute(String params) async {
    return await repository.checkMobile(params);
  }
}
