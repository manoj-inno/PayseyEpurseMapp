import 'dart:typed_data';

import 'entity/face_matching_entity.dart';
import 'face_matching_repo.dart';

class MatchFacesUseCase {
  final FaceMatchRepository repository;

  MatchFacesUseCase(this.repository);

  Future<FaceMatchEntity> call(
      Uint8List candidateImage, String referenceImageUrl, String refNum) async {
    return await repository.matchFaces(
        candidateImage, referenceImageUrl, refNum);
  }
}
