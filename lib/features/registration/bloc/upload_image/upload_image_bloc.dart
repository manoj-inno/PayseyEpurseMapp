import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:epurse/core/util/api_response_code.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/upload_image/upload_image.dart';
import '../../domain/upload_image/upload_image_entity.dart';

part 'upload_image_event.dart';
part 'upload_image_state.dart';

class UploadImageBloc extends Bloc<UploadImageEvent, UploadImageState> {
  final UploadImagesUseCase useCase;

  UploadImageBloc(this.useCase) : super(UploadInitial()) {
    on<UploadImages>(_onUploadImages);
  }

  Future<void> _onUploadImages(
    UploadImages event,
    Emitter<UploadImageState> emit,
  ) async {
    emit(UploadLoading());

    final result = await useCase(
      userRef: event.userRef,
      idFront: event.idFront,
      idBack: event.idBack,
      selfie: event.selfie,
      signature: event.signature,
    );

    result.fold(
      (failure) => _handleFailure(failure, emit),
      (response) => _handleSuccess(response, emit),
    );
  }

  void _handleFailure(Failure failure, Emitter<UploadImageState> emit) {
    if (failure is ServerDownFailure) {
      emit(UploadServerDown());
    } else {
      emit(UploadFailure());
    }
  }

  void _handleSuccess(UploadResponse response, Emitter<UploadImageState> emit) {
    if (response.code == ApiResponseCode.success.value) {
      emit(UploadSuccess(response));
    } else {
      emit(UploadFailure());
    }
  }
}
