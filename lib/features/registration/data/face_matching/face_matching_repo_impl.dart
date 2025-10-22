import 'dart:typed_data';

import '../../domain/face_matching/entity/face_matching_entity.dart';
import '../../domain/face_matching/face_matching_repo.dart';
import 'face_matching_datasource.dart';

class FaceMatchRepositoryImpl implements FaceMatchRepository {
  final FaceMatchRemoteDataSource remoteDataSource;

  FaceMatchRepositoryImpl(this.remoteDataSource);

  @override
  Future<FaceMatchEntity> matchFaces(
      Uint8List candidateImage, String referenceImageUrl, String refNum) async {
    final response = await remoteDataSource.matchFaces(
        candidateImage, referenceImageUrl, refNum);
    return FaceMatchEntity(
      score: response.score,
      success: response.success,
      verificationStatus: response.verificationStatus,
    );
  }
}
