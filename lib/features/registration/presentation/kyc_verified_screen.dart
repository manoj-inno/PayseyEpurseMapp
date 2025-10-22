import 'dart:io';
import 'dart:typed_data';
import 'package:epurse/core/widgets/error_snackbar.dart';
import 'package:epurse/core/widgets/server_down_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/gradient_button.dart';
import '../bloc/upload_image/upload_image_bloc.dart';

class KycVerifiedScreen extends StatelessWidget {
  final Uint8List selfieImage;
  final String refNum;
  final int customerTypeId;
  final Uint8List frontIdFile;
  final Uint8List backIdFile;
  final String frontSelfieUrl;
  final String? fullName;
  final String? fcn;
  final String? dateOfBirth;
  final String? sex;
  final String? nationality;
  final String? fin;
  final String? dateOfIssue;
  final String? expiryDate;
  final String? phoneNumber;
  final String? region;
  final String? zone;
  final String? woreda;
  final String faceMatchStatus;
  final int faceMatchScore;

  const KycVerifiedScreen({
    super.key,
    required this.selfieImage,
    required this.refNum,
    required this.customerTypeId,
    required this.frontIdFile,
    required this.backIdFile,
    required this.frontSelfieUrl,
    this.fullName,
    this.dateOfBirth,
    this.sex,
    this.nationality,
    this.fin,
    this.fcn,
    this.dateOfIssue,
    this.expiryDate,
    this.phoneNumber,
    this.region,
    this.zone,
    this.woreda,
    required this.faceMatchStatus,
    required this.faceMatchScore,
  });

  List<String> _splitFullName(String? name) {
    if (name == null || name.trim().isEmpty) return ["", "", ""];

    final parts = name.trim().split(RegExp(r'\s+'));
    String firstName = parts.isNotEmpty ? parts.first : "";
    String lastName = parts.length > 1 ? parts.last : "";
    String middleName =
        parts.length > 2 ? parts.sublist(1, parts.length - 1).join(" ") : "";

    return [firstName, middleName, lastName];
  }

  @override
  Widget build(BuildContext context) {
    final localizations =
        AppLocalizations(context.watch<LanguageBloc>().state.maybeWhen(
              loaded: (locale) => locale,
              orElse: () => const Locale('en'),
            ));
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);
    final nameParts = _splitFullName(fullName);
    final firstName = nameParts[0];
    final middleName = nameParts[1];
    final lastName = nameParts[2];
    return BlocListener<UploadImageBloc, UploadImageState>(
      listener: (context, state) {
        if (state is UploadSuccess) {
          context.navigateTo(RouteConstants.idCardDetails,
              arguments: IdCardDetailsArguments(
                  refNum: refNum,
                  customerTypeId: customerTypeId,
                  firstName: firstName,
                  middleName: middleName,
                  lastName: lastName,
                  dateOfBirth: dateOfBirth ?? "",
                  idNumber: fcn ?? "",
                  fin: fin ?? "",
                  dateOfIssue: dateOfIssue ?? "",
                  dateOfExpiry: expiryDate ?? "",
                  nationality: nationality ?? "",
                  sex: sex ?? ""));
        } else if (state is UploadFailure) {
          showErrorSnackBar(
              context, "Failed to upload images, please try again");
        } else if (state is UploadServerDown) {
          showDialog(
              context: context,
              builder: (context) => ServerDownDialog(
                  message:
                      "Server is currently unavailable, please try again later"));
        }
      },
      child: Container(
          decoration: AppThemes.scaffoldBackgroundDecoration(
              isDark: isDarkMode, isPrimary: true),
          child: Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      localizations.get('e_kyc_verified'),
                      style: theme.textTheme.displayMedium,
                    ),
                    Text(
                      localizations.get(
                          'your_e_kyc_verification_is_complete_you_can_now_proceed_to_the_next_step'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      localizations.get('id_card'),
                      style: theme.textTheme.displaySmall,
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.memory(frontIdFile),
                    ),
                    const SizedBox(height: 10),
                    Divider(thickness: 0.1, color: theme.colorScheme.primary),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.memory(backIdFile),
                    ),
                    const SizedBox(height: 20),
                    Divider(
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      localizations.get('face_matching'),
                      style: theme.textTheme.displaySmall,
                    ),
                    const SizedBox(height: 10),
                    if (fullName != null || fullName != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: faceMatchStatus,
                          title: localizations.get('face_matching_status')),
                    const SizedBox(height: 10),
                    Divider(thickness: 0.1, color: theme.colorScheme.primary),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.memory(selfieImage),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(frontSelfieUrl),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Divider(
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      localizations.get('extract_datas'),
                      style: theme.textTheme.displaySmall,
                    ),
                    const SizedBox(height: 10),
                    if (fullName != null || fullName != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: fullName,
                          title: localizations.get('full_name')),
                    if (dateOfBirth != null || dateOfBirth != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: dateOfBirth,
                          title: localizations.get('date_of_birth')),
                    if (sex != null || sex != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: sex,
                          title: localizations.get('sex')),
                    if (nationality != null || nationality != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: nationality,
                          title: localizations.get('nationality')),
                    if (fin != null || fin != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: fin,
                          title: localizations.get('fin')),
                    if (dateOfIssue != null || dateOfIssue != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: dateOfIssue,
                          title: localizations.get('date_of_issue')),
                    if (expiryDate != null || expiryDate != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: expiryDate,
                          title: localizations.get('expiry_date')),
                    if (phoneNumber != null || phoneNumber != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: phoneNumber,
                          title: localizations.get('phone_number')),
                    if (region != null || region != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: region,
                          title: localizations.get('region')),
                    if (zone != null || zone != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: zone,
                          title: localizations.get('zone')),
                    if (woreda != null || woreda != "")
                      ExtractedDataRow(
                          theme: theme,
                          value: woreda,
                          title: localizations.get('woreda')),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.transparent,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: GradientButton(
                    onPressed: () async {
                      // Create temporary files from the Uint8List data
                      final tempDir = await Directory.systemTemp.createTemp();

                      // Create files for each image
                      final idFrontFile = File('${tempDir.path}/id_front.jpg');
                      final idBackFile = File('${tempDir.path}/id_back.jpg');
                      final selfieFile = File('${tempDir.path}/selfie.jpg');

                      // Write the Uint8List data to the files
                      await idFrontFile.writeAsBytes(frontIdFile);
                      await idBackFile.writeAsBytes(backIdFile);
                      await selfieFile.writeAsBytes(selfieImage);

                      // Now pass the File objects to the event
                      context.read<UploadImageBloc>().add(UploadImages(
                          userRef: refNum,
                          idFront: idFrontFile,
                          idBack: idBackFile,
                          selfie: selfieFile,
                          signature: null));
                    },
                    isDarkMode: isDarkMode,
                    child: BlocBuilder<UploadImageBloc, UploadImageState>(
                      builder: (context, state) {
                        if (state is UploadLoading) {
                          return SizedBox(
                            height: 30,
                            width: 30,
                            child: CircularProgressIndicator(),
                          );
                        }
                        return Text(localizations.get('continue'));
                      },
                    )),
              ),
            ),
          )),
    );
  }
}

class ExtractedDataRow extends StatelessWidget {
  const ExtractedDataRow({
    super.key,
    required this.theme,
    required this.value,
    required this.title,
  });

  final ThemeData theme;
  final String? value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title: ",
          style: theme.textTheme.labelLarge,
        ),
        Text(
          value ?? "",
          style: theme.textTheme.labelLarge,
        ),
      ],
    );
  }
}
