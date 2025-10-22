import 'dart:typed_data';

import 'entity/face_matching_entity.dart';

abstract class FaceMatchRepository {
  Future<FaceMatchEntity> matchFaces(
      Uint8List candidateImage, String referenceImageUrl, String refNum);
}
