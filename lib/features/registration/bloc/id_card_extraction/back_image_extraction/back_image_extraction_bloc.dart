import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

import '../../../domain/id_card_extraction/entities/ocr_back_entity.dart';
import '../../../domain/id_card_extraction/usecases/perform_back_ocr.dart';

part 'back_image_extraction_event.dart';
part 'back_image_extraction_state.dart';
part 'back_image_extraction_bloc.freezed.dart';

class BackImageExtractionBloc
    extends Bloc<BackImageExtractionEvent, BackImageExtractionState> {
  final PerformBackOcr performBackOcr;

  BackImageExtractionBloc(this.performBackOcr)
      : super(const BackImageExtractionState.initial()) {
    on<BackImageExtractionEvent>((event, emit) async {
      await event.map(
        captureImage: (e) async {
          emit(BackImageExtractionState.imageCaptured(capturedImage: e.image));
        },
        performBackOcr: (e) async {
          await _performOcr(e.referenceId, e.image, e.side, emit);
        },
      );
    });
  }

  Future<void> _performOcr(String referenceId, Uint8List image, String side,
      Emitter<BackImageExtractionState> emit) async {
    try {
      debugPrint("______________BACK OCR BLOC DEBUG____________");
      debugPrint("ReferenceId received: '$referenceId'");
      debugPrint("ReferenceId length: ${referenceId.length}");
      debugPrint("ReferenceId isEmpty: ${referenceId.isEmpty}");
      debugPrint("Side: $side");

      emit(const BackImageExtractionState.loading());

      final tempDir = await Directory.systemTemp.createTemp();
      final tempFile = File('${tempDir.path}/temp_image.jpg');
      await tempFile.writeAsBytes(image);

      final result = await performBackOcr.call(
        referenceId,
        tempFile,
        side,
      );

      await tempFile.delete();
      await tempDir.delete();

      result.fold(
        (failure) async {
          if (!emit.isDone) {
            if (failure.message.contains('Network error') ||
                failure.message.contains('HTTP client error') ||
                failure.message.contains('SocketException')) {
              emit(const BackImageExtractionState.serverDown(
                  message:
                      'Server is currently unavailable. Please try again later.'));
            } else {
              emit(const BackImageExtractionState.error(
                  message: 'Failed to process back image'));
            }
          }
        },
        (ocrBackEntity) {
          if (!emit.isDone) {
            emit(BackImageExtractionState.success(
              ocrBackEntity: ocrBackEntity,
              capturedImage: image,
            ));
          }
        },
      );
    } on ClientException catch (e) {
      if (!emit.isDone) {
        emit(BackImageExtractionState.serverDown(message: e.toString()));
      }
    } on SocketException catch (e) {
      if (!emit.isDone) {
        emit(BackImageExtractionState.serverDown(message: e.toString()));
      }
    } catch (e) {
      if (!emit.isDone) {
        emit(const BackImageExtractionState.error(
            message: 'Failed to process back image'));
      }
    }
  }
}
