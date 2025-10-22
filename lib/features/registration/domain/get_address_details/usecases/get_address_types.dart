import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../../core/errors/failures.dart';
import '../entities/address_type_entity.dart';
import '../get_address_repo.dart';

class GetAddressTypesUsecase {
  final GetAddressDetailsRepo repo;

  GetAddressTypesUsecase({required this.repo});

  Future<Either<Failure, List<AddressTypeEntity>>> call(
      {required int custType}) async {
    final result = await repo.getAddressTypes();
    return result.map(
        (types) {
          debugPrint("______________ADDRESS TYPE FILTERING____________");
          debugPrint("Filtering for custType: $custType");
          debugPrint("Total address types received: ${types.length}");
          
          for (var type in types) {
            debugPrint("Address Type: ${type.addressTypeDesc}, custType: ${type.custType}, matches: ${type.custType == custType.toString()}");
          }
          
          final filteredTypes = types.where((type) => type.custType == custType.toString()).toList();
          debugPrint("Filtered address types: ${filteredTypes.length}");
          
          return filteredTypes;
        });
  }
}
