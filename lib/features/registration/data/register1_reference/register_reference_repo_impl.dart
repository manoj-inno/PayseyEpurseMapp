import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../domain/register1_reference/entities/check_mobile_entity.dart';
import '../../domain/register1_reference/entities/generate_reference_entity.dart';
import '../../domain/register1_reference/entities/mobile_otp_entity.dart';
import '../../domain/register1_reference/entities/update_primary_device_entity.dart';
import '../../domain/register1_reference/entities/verify_otp_entity.dart';
import '../../domain/register1_reference/register_reference_repo.dart';
import 'register_reference_datasource.dart';

class RegisterReferenceRepoImpl implements RegisterReferenceRepo {
  final RegisterReferenceDatasource datasource;

  RegisterReferenceRepoImpl({required this.datasource});

  @override
  Future<Either<Failure, MobileCheckEntity>> checkMobile(String mobile) async {
    return ExceptionHandler.handleApiCall(() async {
      final mobileCheckModel = await datasource.checkMobile(mobile);
      return MobileCheckEntity(
        code: mobileCheckModel.code,
        message: mobileCheckModel.message,
        regRef: mobileCheckModel.data?.regRef ?? '',
        regStatus: mobileCheckModel.data?.status ?? 0,
        userType: mobileCheckModel.data?.userType ?? 22,
        remark: mobileCheckModel.remark,
      );
    });
  }

  @override
  Future<Either<Failure, MobileOtpEntity>> generateMobileOtp(
      String mobile) async {
    return ExceptionHandler.handleApiCall(() async {
      final mobileOtpModel = await datasource.generateMobileOtp(mobile);
      return MobileOtpEntity(
        otp: mobileOtpModel.otp,
        message: mobileOtpModel.message,
        status: mobileOtpModel.status,
      );
    });
  }

  @override
  Future<Either<Failure, MobileOtpVerificationEntity>> verifyMobileOtp(
      String mobile, String otp) async {
    return ExceptionHandler.handleApiCall(() async {
      final verifyOtpModel = await datasource.verifyMobileOtp(mobile, otp);
      return MobileOtpVerificationEntity(
        code: 200, // Success code
        message: verifyOtpModel.message,
        status: 'success', // Default success status
        mobile: mobile,
      );
    });
  }

  @override
  Future<Either<Failure, GenerateReference>> generateReference(
      String mobile, int userTypeId) async {
    return ExceptionHandler.handleApiCall(() async {
      final generateReferenceModel =
          await datasource.generateReference(mobile, userTypeId);
      return GenerateReference(
        regRef: generateReferenceModel.regRef,
        status: generateReferenceModel.status,
        customerTypeId: generateReferenceModel.customerTypeId,
      );
    });
  }

  @override
  Future<Either<Failure, UpdatePrimaryDeviceEntity>> updatePrimaryDevice(
      String refNumber) async {
    return ExceptionHandler.handleApiCall(() async {
      final updatePrimaryDeviceModel =
          await datasource.updatePrimaryDevice(refNumber);
      return UpdatePrimaryDeviceEntity(
        refNumber: updatePrimaryDeviceModel.refNumber,
        deviceId: updatePrimaryDeviceModel.deviceId,
        message: updatePrimaryDeviceModel.message,
      );
    });
  }
}
