import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/widgets/error_snackbar.dart';
import '../bloc/id_card_extraction/back_image_extraction/back_image_extraction_bloc.dart';
import '../bloc/id_card_extraction/front_image_extraction/front_image_extraction_bloc.dart';

class CaptureIdTile extends StatelessWidget {
  const CaptureIdTile({
    super.key,
    required this.theme,
    required this.title,
    required this.refNum,
    this.isBackSide = false,
  });

  final ThemeData theme;
  final String title;
  final String refNum;
  final bool isBackSide;

  @override
  Widget build(BuildContext context) {
    return isBackSide
        ? BlocConsumer<BackImageExtractionBloc, BackImageExtractionState>(
            listener: (context, state) {
              debugPrint("BACK STATE: $state");
              state.maybeWhen(
                error: (message) {
                  showErrorSnackBar(context, message);
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return _buildCard(
                context,
                isLoading: state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                ),
                image: state.maybeWhen(
                  imageCaptured: (image) => image,
                  success: (entity, image) => image,
                  orElse: () => null,
                ),
                onCapture: (bytes) => context
                    .read<BackImageExtractionBloc>()
                    .add(BackImageExtractionEvent.captureImage(
                      image: bytes,
                      referenceId: refNum,
                    )),
              );
            },
          )
        : BlocConsumer<FrontImageExtractionBloc, FrontImageExtractionState>(
            listener: (context, state) {
              debugPrint("FRONT STATE: $state");
              state.maybeWhen(
                error: (message) {
                  showErrorSnackBar(context, message);
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return _buildCard(
                context,
                isLoading: state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                ),
                image: state.maybeWhen(
                  imageCaptured: (image) => image,
                  success: (entity, image) => image,
                  orElse: () => null,
                ),
                onCapture: (bytes) => context
                    .read<FrontImageExtractionBloc>()
                    .add(FrontImageExtractionEvent.captureImage(
                      image: bytes,
                      referenceId: refNum,
                    )),
              );
            },
          );
  }

  Widget _buildCard(
    BuildContext context, {
    required bool isLoading,
    Uint8List? image,
    required Function(Uint8List) onCapture,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () async {
        log(refNum);
        final ImagePicker picker = ImagePicker();
        final XFile? photo = await picker.pickImage(
          imageQuality: 100,
          requestFullMetadata: true,
          source: ImageSource.camera,
          preferredCameraDevice: CameraDevice.rear,
        );

        if (photo != null) {
          final bytes = await photo.readAsBytes();
          onCapture(bytes);
        }
      },
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.memory(
                        image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_enhance_rounded, size: 40),
                        SizedBox(height: 10),
                        Text(
                          title,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
        ),
      ),
    );
  }
}
