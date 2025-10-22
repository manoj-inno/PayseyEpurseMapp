import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../entities/address_proof_entity.dart';
import '../get_address_repo.dart';

class GetAddressProofsUsecase {
  final GetAddressDetailsRepo repo;

  GetAddressProofsUsecase({required this.repo});

  Future<Either<Failure, List<AddressProofEntity>>> call(
      {required int entityType}) async {
    print("GetAddressProofsUsecase: Getting address proofs for entityType: $entityType");
    final result = await repo.getAddressProofs();
    return result.map((proofs) {
      print("GetAddressProofsUsecase: All proofs: ${proofs.map((p) => '${p.docType} (entityType: ${p.entityType})').toList()}");
      print("GetAddressProofsUsecase: Looking for entityType: $entityType");
      final filteredProofs = proofs.where((proof) {
        print("GetAddressProofsUsecase: Checking proof ${proof.docType} with entityType ${proof.entityType} == $entityType? ${proof.entityType == entityType}");
        return proof.entityType == entityType;
      }).toList();
      print("GetAddressProofsUsecase: Filtered proofs for entityType $entityType: ${filteredProofs.map((p) => '${p.docType} (entityType: ${p.entityType})').toList()}");
      
      // TEMPORARY: Return all proofs to test if dropdown works
      if (filteredProofs.isEmpty) {
        print("GetAddressProofsUsecase: No filtered proofs found, returning all proofs for testing");
        return proofs;
      }
      
      return filteredProofs;
    });
  }
}
