import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../domain/get_address_details/entities/address_proof_entity.dart';
import '../../domain/get_address_details/entities/address_type_entity.dart';
import '../../domain/get_address_details/get_address_repo.dart';
import 'get_address_details_datasource.dart';

class GetAddressDetailsRepoImpl implements GetAddressDetailsRepo {
  final GetAddressDetailsDataSource dataSource;

  GetAddressDetailsRepoImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<AddressTypeEntity>>> getAddressTypes() async {
    return ExceptionHandler.handleApiCall(() async {
      final result = await dataSource.getAddressTypes();
      return result
          .map((e) => AddressTypeEntity(
                addressTypeId: e.addressTypeId,
                addressTypeDesc: e.addressTypeDesc,
                custType: e.custType.toString(),
                mandatory: e.mandatory,
              ))
          .toList();
    });
  }

  @override
  Future<Either<Failure, List<AddressProofEntity>>> getAddressProofs() async {
    return ExceptionHandler.handleApiCall(() async {
      final result = await dataSource.getAddressProofs();
      print("GetAddressDetailsRepoImpl: Raw models from data source: ${result.map((e) => '${e.docType} (entityType: ${e.entityType})').toList()}");
      final entities = result
          .map((e) => AddressProofEntity(
                id: e.id,
                docType: e.docType,
                entityType: e.entityType,
                isMaster: e.isMaster,
              ))
          .toList();
      print("GetAddressDetailsRepoImpl: Converted entities: ${entities.map((e) => '${e.docType} (entityType: ${e.entityType})').toList()}");
      return entities;
    });
  }
}
