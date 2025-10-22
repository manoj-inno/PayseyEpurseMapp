import '../../../../core/errors/failures.dart';
import 'entities/check_mobile_entity.dart';
import 'package:dartz/dartz.dart';

import 'entities/generate_reference_entity.dart';
import 'entities/mobile_otp_entity.dart';
import 'entities/update_primary_device_entity.dart';
import 'entities/verify_otp_entity.dart';

abstract class RegisterReferenceRepo {
  Future<Either<Failure, MobileCheckEntity>> checkMobile(String mobile);
  Future<Either<Failure, MobileOtpEntity>> generateMobileOtp(String mobile);
  Future<Either<Failure, MobileOtpVerificationEntity>> verifyMobileOtp(
      String mobile, String otp);
  Future<Either<Failure, GenerateReference>> generateReference(
      String mobile, int userTypeId);
  Future<Either<Failure, UpdatePrimaryDeviceEntity>> updatePrimaryDevice(
      String refNumber);
}
