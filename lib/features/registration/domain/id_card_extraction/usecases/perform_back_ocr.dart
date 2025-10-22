import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../entities/ocr_back_entity.dart';
import '../id_card_extraction_repo.dart';

class PerformBackOcr {
  final IdCardExtractionRepo repo;

  PerformBackOcr(this.repo);

  Future<Either<Failure, OcrBackEntity>> call(
      String referenceId, File image, String side) async {
    return await repo.performBackOcr(referenceId, image, side);
  }
}
