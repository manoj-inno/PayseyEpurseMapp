import 'package:dartz/dartz.dart';
import 'package:epurse/core/errors/failures.dart';

import '../../../../../core/usecase/core_usecase.dart';
import '../entities/mobile_otp_entity.dart';
import '../register_reference_repo.dart';

class GenerateOtpUseCase
    implements CoreUseCase<String, Either<Failure, MobileOtpEntity>> {
  final RegisterReferenceRepo repo;

  GenerateOtpUseCase(this.repo);

  @override
  Future<Either<Failure, MobileOtpEntity>> execute(String params) async {
    return await repo.generateMobileOtp(params);
  }
}
