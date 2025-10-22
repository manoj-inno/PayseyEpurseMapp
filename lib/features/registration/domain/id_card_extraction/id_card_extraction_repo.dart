import 'dart:io';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import 'entities/ocr_back_entity.dart';
import 'entities/ocr_front_entity.dart';

abstract class IdCardExtractionRepo {
  Future<Either<Failure, OcrFrontEntity>> performFrontOcr(
      String referenceId, File image, String side);
  Future<Either<Failure, OcrBackEntity>> performBackOcr(
      String referenceId, File image, String side);
}
