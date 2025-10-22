import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import 'upload_image_entity.dart';

abstract class UploadRepository {
  Future<Either<Failure, UploadResponse>> uploadImages({
    required String userRef,
    required File idFront,
    required File idBack,
    required File selfie,
    required File? signature,
  });
}
