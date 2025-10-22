import 'dart:typed_data';

import 'package:equatable/equatable.dart';

import '../../features/payments/cubit/transaction_type_cubit.dart';

/// Base class for all route arguments
abstract class RouteArguments extends Equatable {
  const RouteArguments();

  @override
  bool get stringify => true;
}

/// Arguments for enter mobile screen
class EnterMobileArguments extends RouteArguments {
  final String mobile;

  const EnterMobileArguments({required this.mobile});

  @override
  List<Object?> get props => [mobile];
}

/// Arguments for privacy policy screen
class PrivacyPolicyArguments extends RouteArguments {
  final String mobile;
  final String refNum;

  const PrivacyPolicyArguments({required this.mobile, required this.refNum});

  @override
  List<Object?> get props => [mobile, refNum];
}

/// Arguments for terms and conditions screen
class TermsAndConditionsArguments extends RouteArguments {
  final String mobile;
  final String refNum;

  const TermsAndConditionsArguments(
      {required this.mobile, required this.refNum});

  @override
  List<Object?> get props => [mobile, refNum];
}

/// Arguments for customer type screen
class CustomerTypeArguments extends RouteArguments {
  final String mobile;

  const CustomerTypeArguments({required this.mobile});

  @override
  List<Object?> get props => [mobile];
}

/// Arguments for upload ID screen
class UploadIdArguments extends RouteArguments {
  final int customerTypeId;
  final String refNum;
  final bool showDialogOnInit;

  const UploadIdArguments({
    required this.customerTypeId,
    required this.refNum,
    this.showDialogOnInit = false,
  });

  @override
  List<Object?> get props => [customerTypeId, refNum, showDialogOnInit];
}

/// Arguments for liveliness detection screen
class LivelinessDetectionArguments extends RouteArguments {
  final int customerTypeId;
  final String refNum;
  final Uint8List frontIdFile;
  final Uint8List backIdFile;
  final String frontSelfieUrl;
  final String fullName;
  final String fcn;
  final String dateOfBirth;
  final String sex;
  final String nationality;
  final String fin;
  final String dateOfIssue;
  final String expiryDate;
  final String phoneNumber;
  final String region;
  final String zone;
  final String woreda;

  const LivelinessDetectionArguments(
      {required this.customerTypeId,
      required this.refNum,
      required this.frontIdFile,
      required this.backIdFile,
      required this.frontSelfieUrl,
      required this.fullName,
      required this.fcn,
      required this.dateOfBirth,
      required this.sex,
      required this.nationality,
      required this.fin,
      required this.dateOfIssue,
      required this.expiryDate,
      required this.phoneNumber,
      required this.region,
      required this.zone,
      required this.woreda});

  @override
  List<Object?> get props => [
        customerTypeId,
        refNum,
        frontIdFile,
        backIdFile,
        frontSelfieUrl,
        fullName,
        fcn,
        dateOfBirth,
        sex,
        nationality,
        fin,
        dateOfIssue,
        expiryDate,
        phoneNumber,
        region,
        zone,
        woreda
      ];
}

/// Arguments for kyc verified screen
class KycVerifiedArguments extends RouteArguments {
  final String refNum;
  final int customerTypeId;
  final Uint8List frontIdFile;
  final Uint8List backIdFile;
  final String frontSelfieUrl;
  final String fullName;
  final String fcn;
  final String dateOfBirth;
  final String sex;
  final String nationality;
  final String fin;
  final String dateOfIssue;
  final String expiryDate;
  final String phoneNumber;
  final String region;
  final String zone;
  final String woreda;
  final String faceMatchStatus;
  final int faceMatchScore;
  final Uint8List selfieImage;

  const KycVerifiedArguments(
      {required this.refNum,
      required this.customerTypeId,
      required this.frontIdFile,
      required this.backIdFile,
      required this.frontSelfieUrl,
      required this.fullName,
      required this.fcn,
      required this.dateOfBirth,
      required this.sex,
      required this.nationality,
      required this.fin,
      required this.dateOfIssue,
      required this.expiryDate,
      required this.phoneNumber,
      required this.region,
      required this.zone,
      required this.woreda,
      required this.faceMatchStatus,
      required this.faceMatchScore,
      required this.selfieImage});

  @override
  List<Object?> get props => [
        refNum,
        customerTypeId,
        frontIdFile,
        backIdFile,
        frontSelfieUrl,
        fullName,
        fcn,
        dateOfBirth,
        sex,
        nationality,
        fin,
        dateOfIssue,
        expiryDate,
        phoneNumber,
        region,
        zone,
        woreda,
        faceMatchStatus,
        faceMatchScore,
        selfieImage
      ];
}

/// Arguments for personal details screen
class PersonalDetailsArguments extends RouteArguments {
  final String refNum;
  final int customerTypeId;
  final String firstName;
  final String middleName;
  final String lastName;
  final String documentId;
  final String optionalDocId;
  final String dob;
  final String dateOfExpiry;
  final String dateOfIssue;

  const PersonalDetailsArguments(
      {required this.refNum,
      required this.customerTypeId,
      required this.firstName,
      required this.middleName,
      required this.lastName,
      required this.documentId,
      required this.optionalDocId,
      required this.dob,
      required this.dateOfExpiry,
      required this.dateOfIssue});

  @override
  List<Object?> get props => [
        refNum,
        customerTypeId,
        firstName,
        middleName,
        lastName,
        documentId,
        optionalDocId,
        dob,
        dateOfExpiry,
        dateOfIssue
      ];
}

/// Arguments for id card details screen
class IdCardDetailsArguments extends RouteArguments {
  final String refNum;
  final int customerTypeId;
  final String firstName;
  final String middleName;
  final String lastName;
  final String dateOfBirth;
  final String idNumber;
  final String fin;
  final String dateOfIssue;
  final String dateOfExpiry;
  final String nationality;
  final String sex;

  const IdCardDetailsArguments(
      {required this.refNum,
      required this.customerTypeId,
      required this.firstName,
      required this.middleName,
      required this.lastName,
      required this.dateOfBirth,
      required this.idNumber,
      required this.fin,
      required this.dateOfIssue,
      required this.dateOfExpiry,
      required this.nationality,
      required this.sex});

  @override
  List<Object?> get props => [
        refNum,
        customerTypeId,
        firstName,
        middleName,
        lastName,
        dateOfBirth,
        idNumber,
        fin,
        dateOfIssue,
        dateOfExpiry,
        nationality,
        sex
      ];
}

/// Arguments for income details screen
class IncomeDetailsArguments extends RouteArguments {
  final String refNum;
  final int customerTypeId;
  final String firstName;
  final String middleName;
  final String lastName;
  final int nationality;
  final String documentId;
  final String optionalDocId;
  final String dob;
  final String dateOfExpiry;
  final String dateOfIssue;
  final int religion;
  final int category;
  final int gender;
  final String maritalStatus;
  final int disability;
  final int qualification;

  const IncomeDetailsArguments(
      {required this.refNum,
      required this.customerTypeId,
      required this.firstName,
      required this.middleName,
      required this.lastName,
      required this.nationality,
      required this.documentId,
      required this.optionalDocId,
      required this.dob,
      required this.dateOfExpiry,
      required this.dateOfIssue,
      required this.religion,
      required this.category,
      required this.gender,
      required this.maritalStatus,
      required this.disability,
      required this.qualification});

  @override
  List<Object?> get props => [
        refNum,
        customerTypeId,
        firstName,
        middleName,
        lastName,
        nationality,
        documentId,
        optionalDocId,
        dob,
        dateOfExpiry,
        dateOfIssue,
        religion,
        category,
        gender,
        maritalStatus,
        disability,
        qualification
      ];
}

/// Arguments for occupation screen
class OccupationArguments extends RouteArguments {
  final int customerTypeId;
  final String refNum;

  const OccupationArguments({
    required this.customerTypeId,
    required this.refNum,
  });

  @override
  List<Object?> get props => [customerTypeId, refNum];
}

/// Arguments for business details screen
class BusinessDetailsArguments extends RouteArguments {
  final String refNum;
  final int customerTypeId;

  const BusinessDetailsArguments({
    required this.refNum,
    required this.customerTypeId,
  });

  @override
  List<Object?> get props => [refNum, customerTypeId];
}

/// Arguments for add address screen
class AddressArguments extends RouteArguments {
  final String refNumber;
  final int customerTypeId;

  const AddressArguments({
    required this.refNumber,
    required this.customerTypeId,
  });

  @override
  List<Object?> get props => [refNumber, customerTypeId];
}

/// Arguments for fill address screen
class FillAddressArguments extends RouteArguments {
  final String refNumber;
  final String addressType;
  final int addressTypeId;
  final int customerTypeId;

  const FillAddressArguments({
    required this.refNumber,
    required this.addressType,
    required this.addressTypeId,
    required this.customerTypeId,
  });

  @override
  List<Object?> get props =>
      [refNumber, addressType, addressTypeId, customerTypeId];
}

/// Arguments for business address screen
class BusinessAddressArguments extends RouteArguments {
  final String refNumber;
  final int customerTypeId;

  const BusinessAddressArguments({
    required this.refNumber,
    required this.customerTypeId,
  });

  @override
  List<Object?> get props => [refNumber, customerTypeId];
}

/// Arguments for PEP screen
class PepArguments extends RouteArguments {
  final String refNumber;

  const PepArguments({required this.refNumber});

  @override
  List<Object?> get props => [refNumber];
}

/// Arguments for set passcode screen
class PasscodeArguments extends RouteArguments {
  final String refNumber;

  const PasscodeArguments({required this.refNumber});

  @override
  List<Object?> get props => [refNumber];
}

/// Arguments for mode of operation screen
class ModeOfOperationArguments extends RouteArguments {
  final String refNumber;

  const ModeOfOperationArguments({required this.refNumber});

  @override
  List<Object?> get props => [refNumber];
}

/// Arguments for completed registration screen
class CompletedRegistrationArguments extends RouteArguments {
  final String refNumber;

  const CompletedRegistrationArguments({required this.refNumber});

  @override
  List<Object?> get props => [refNumber];
}

/// Arguments for payments screen
class PaymentsArguments extends RouteArguments {
  final String recipientName;
  final String recipientNumber;
  final String? userId;

  const PaymentsArguments({
    required this.recipientName, 
    required this.recipientNumber,
    this.userId,
  });

  @override
  List<Object?> get props => [recipientName, recipientNumber, userId];
}

/// Arguments for amount entry screen
class AmountEntryArguments extends RouteArguments {
  final double amount;
  final String receiver;
  final String receiverNumber;
  final TransactionType type;
  final String? userId;

  const AmountEntryArguments(
      {required this.amount,
      required this.receiver,
      required this.receiverNumber,
      required this.type,
      this.userId});

  @override
  List<Object?> get props => [amount, receiver, receiverNumber, type, userId];
}

/// Arguments for transaction details screen
class TransactionDetailsArguments extends RouteArguments {
  final TransactionType transactionType;
  final String? transactionId;
  final double? amount;
  final String? senderName;
  final String? receiverName;
  final String? receiverNumber;
  final String? timestamp;
  final bool isSuccess;
  final String? errorMessage;
  final bool isInsufficientBalance;

  const TransactionDetailsArguments({
    required this.transactionType,
    this.transactionId,
    this.amount,
    this.senderName,
    this.receiverName,
    this.receiverNumber,
    this.timestamp,
    this.isSuccess = true,
    this.errorMessage,
    this.isInsufficientBalance = false,
  });

  @override
  List<Object?> get props => [
        transactionType,
        transactionId,
        amount,
        senderName,
        receiverName,
        receiverNumber,
        timestamp,
        isSuccess,
        errorMessage,
        isInsufficientBalance,
      ];
}

/// Arguments for card settings screen
class CardSettingsArguments extends RouteArguments {
  final int cardIndex;

  const CardSettingsArguments({required this.cardIndex});

  @override
  List<Object?> get props => [cardIndex];
}

/// Arguments for card limits screen
class CardLimitsArguments extends RouteArguments {
  final String cardNumber;

  const CardLimitsArguments({required this.cardNumber});

  @override
  List<Object?> get props => [cardNumber];
}

/// Arguments for select bill payment operator screen
class SelectBillPaymentOperatorArguments extends RouteArguments {
  final int billTypeId;
  final String billType;

  const SelectBillPaymentOperatorArguments(
      {required this.billTypeId, required this.billType});

  @override
  List<Object?> get props => [billTypeId, billType];
}
