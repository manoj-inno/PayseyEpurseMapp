import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../entities/ocr_front_entity.dart';
import '../id_card_extraction_repo.dart';

class PerformFrontOcr {
  final IdCardExtractionRepo repo;

  PerformFrontOcr(this.repo);

  Future<Either<Failure, OcrFrontEntity>> call(
      String referenceId, File image, String side) async {
    return await repo.performFrontOcr(referenceId, image, side);
  }
}
