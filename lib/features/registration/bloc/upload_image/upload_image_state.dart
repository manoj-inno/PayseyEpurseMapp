part of 'upload_image_bloc.dart';

sealed class UploadImageState extends Equatable {
  const UploadImageState();

  @override
  List<Object> get props => [];
}

class UploadInitial extends UploadImageState {}

class UploadLoading extends UploadImageState {}

class UploadSuccess extends UploadImageState {
  final UploadResponse response;

  const UploadSuccess(this.response);
}

class UploadFailure extends UploadImageState {}

class UploadServerDown extends UploadImageState {}
