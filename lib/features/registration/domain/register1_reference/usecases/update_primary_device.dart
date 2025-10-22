import 'package:epurse/features/registration/domain/register1_reference/register_reference_repo.dart';
import 'package:epurse/features/registration/domain/register1_reference/entities/update_primary_device_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:epurse/core/errors/failures.dart';

import '../../../../../core/usecase/core_usecase.dart';

class UpdatePrimaryDeviceUsecase
    implements CoreUseCase<String, Either<Failure, UpdatePrimaryDeviceEntity>> {
  final RegisterReferenceRepo registerReferenceRepo;
  UpdatePrimaryDeviceUsecase({required this.registerReferenceRepo});

  @override
  Future<Either<Failure, UpdatePrimaryDeviceEntity>> execute(
      String params) async {
    return registerReferenceRepo.updatePrimaryDevice(params);
  }
}
