import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

import '../../../domain/id_card_extraction/entities/ocr_front_entity.dart';
import '../../../domain/id_card_extraction/usecases/perform_front_ocr.dart';

part 'front_image_extraction_event.dart';
part 'front_image_extraction_state.dart';
part 'front_image_extraction_bloc.freezed.dart';

class FrontImageExtractionBloc
    extends Bloc<FrontImageExtractionEvent, FrontImageExtractionState> {
  final PerformFrontOcr performFrontOcr;

  FrontImageExtractionBloc(this.performFrontOcr)
      : super(const FrontImageExtractionState.initial()) {
    on<FrontImageExtractionEvent>((event, emit) async {
      await event.map(
        captureImage: (e) async {
          emit(FrontImageExtractionState.imageCaptured(capturedImage: e.image));
        },
        performFrontOcr: (e) async {
          await _performOcr(e.referenceId, e.image, e.side, emit);
        },
      );
    });
  }

  Future<void> _performOcr(String referenceId, Uint8List image, String side,
      Emitter<FrontImageExtractionState> emit) async {
    try {
      debugPrint("______________FRONT OCR BLOC DEBUG____________");
      debugPrint("ReferenceId received: '$referenceId'");
      debugPrint("ReferenceId length: ${referenceId.length}");
      debugPrint("ReferenceId isEmpty: ${referenceId.isEmpty}");
      debugPrint("Side: $side");
      
      emit(const FrontImageExtractionState.loading());

      final tempDir = await Directory.systemTemp.createTemp();
      final tempFile = File('${tempDir.path}/temp_image.jpg');
      await tempFile.writeAsBytes(image);

      final result = await performFrontOcr.call(
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
                failure.message.contains('SocketException') ||
                failure.message.contains('502 Bad Gateway')) {
              emit(const FrontImageExtractionState.serverDown(
                  message:
                      'Server is currently unavailable. Please try again later.'));
            } else {
              emit(const FrontImageExtractionState.error(
                  message: 'Failed to process front image'));
            }
          }
        },
        (ocrFrontEntity) {
          if (!emit.isDone) {
            emit(FrontImageExtractionState.success(
              ocrFrontEntity: ocrFrontEntity,
              capturedImage: image,
            ));
          }
        },
      );
    } on ClientException catch (e) {
      if (!emit.isDone) {
        emit(FrontImageExtractionState.serverDown(message: e.toString()));
      }
    } on SocketException catch (e) {
      if (!emit.isDone) {
        emit(FrontImageExtractionState.serverDown(message: e.toString()));
      }
    } catch (e) {
      if (!emit.isDone) {
        emit(const FrontImageExtractionState.error(
            message: 'Failed to process front image'));
      }
    }
  }
}
