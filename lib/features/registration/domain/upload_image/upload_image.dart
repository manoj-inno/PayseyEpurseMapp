import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import 'upload_image_entity.dart';
import 'upload_image_repo.dart';

class UploadImagesUseCase {
  final UploadRepository repository;

  UploadImagesUseCase(this.repository);

  Future<Either<Failure, UploadResponse>> call({
    required String userRef,
    required File idFront,
    required File idBack,
    required File selfie,
    File? signature,
  }) {
    return repository.uploadImages(
      userRef: userRef,
      idFront: idFront,
      idBack: idBack,
      selfie: selfie,
      signature: signature,
    );
  }
}
