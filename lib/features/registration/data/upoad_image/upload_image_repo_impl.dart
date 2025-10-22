import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../domain/upload_image/upload_image_entity.dart';
import '../../domain/upload_image/upload_image_repo.dart';
import 'upload_image_datasource.dart';

class UploadRepositoryImpl implements UploadRepository {
  final UploadRemoteDataSource remoteDataSource;

  UploadRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, UploadResponse>> uploadImages({
    required String userRef,
    required File idFront,
    required File idBack,
    required File selfie,
    File? signature,
  }) async {
    return ExceptionHandler.handleApiCall(() => remoteDataSource.uploadImages(
          userRef: userRef,
          idFront: idFront,
          idBack: idBack,
          selfie: selfie,
          signature: signature,
        ));
  }
}
