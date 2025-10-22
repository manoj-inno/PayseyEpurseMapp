part of 'upload_image_bloc.dart';

sealed class UploadImageEvent extends Equatable {
  const UploadImageEvent();

  @override
  List<Object> get props => [];
}

class UploadImages extends UploadImageEvent {
  final String userRef;
  final File idFront;
  final File idBack;
  final File selfie;
  final File? signature;

  const UploadImages({
    required this.userRef,
    required this.idFront,
    required this.idBack,
    required this.selfie,
    this.signature,
  });
}
