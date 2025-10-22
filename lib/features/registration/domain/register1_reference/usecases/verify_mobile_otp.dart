import 'package:dartz/dartz.dart';
import 'package:epurse/core/errors/failures.dart';

import '../../../../../core/usecase/core_usecase.dart';
import '../entities/verify_otp_entity.dart';
import '../register_reference_repo.dart';

class VerifyMobileOtpUseCase
    implements
        CoreUseCase<UseCaseParams,
            Either<Failure, MobileOtpVerificationEntity>> {
  final RegisterReferenceRepo repo;

  VerifyMobileOtpUseCase(this.repo);

  @override
  Future<Either<Failure, MobileOtpVerificationEntity>> execute(
      UseCaseParams params) async {
    final mobile = params['mobile'] as String;
    final otp = params['otp'] as String;
    return await repo.verifyMobileOtp(mobile, otp);
  }
}
