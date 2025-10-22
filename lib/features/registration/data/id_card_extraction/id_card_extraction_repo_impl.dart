import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:epurse/features/registration/domain/id_card_extraction/entities/ocr_back_entity.dart';
import 'package:epurse/features/registration/domain/id_card_extraction/entities/ocr_front_entity.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/id_card_extraction/id_card_extraction_repo.dart';
import 'id_card_extraction_datasource.dart';

class IdCardExtractionRepoImpl extends IdCardExtractionRepo {
  final IdCardExtractionDataSource dataSource;

  IdCardExtractionRepoImpl(this.dataSource);
  @override
  Future<Either<Failure, OcrFrontEntity>> performFrontOcr(
      String referenceId, File image, String side) async {
    try {
      final result = await dataSource.performFrontOcr(referenceId, image, side);
      return Right(result.toEntity());
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, OcrBackEntity>> performBackOcr(
      String referenceId, File image, String side) async {
    try {
      final result = await dataSource.performBackOcr(referenceId, image, side);
      return Right(result.toEntity());
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
