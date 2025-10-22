import 'package:equatable/equatable.dart';

/// Request model for transaction list
class TransactionListRequestModel extends Equatable {
  final int beneficiaryId;
  final int page;
  final int noOfData;
  final bool successOnly;

  const TransactionListRequestModel({
    required this.beneficiaryId,
    required this.page,
    this.noOfData = 15,
    this.successOnly = true,
  });

  Map<String, dynamic> toJson() {
    return {
      'beneficiary_id': beneficiaryId,
      'page': page,
      'no_of_data': noOfData,
      'success_only': successOnly,
    };
  }

  @override
  List<Object?> get props => [beneficiaryId, page, noOfData, successOnly];
}

/// Response model for transaction list
class TransactionListResponseModel extends Equatable {
  final String api;
  final int code;
  final List<TransactionItemModel> data;
  final String message;
  final String status;

  const TransactionListResponseModel({
    required this.api,
    required this.code,
    required this.data,
    required this.message,
    required this.status,
  });

  factory TransactionListResponseModel.fromJson(Map<String, dynamic> json) {
    return TransactionListResponseModel(
      api: json['api'] ?? '',
      code: json['code'] ?? 0,
      data: (json['data'] as List<dynamic>?)
              ?.map((item) => TransactionItemModel.fromJson(item))
              .toList() ??
          [],
      message: json['message'] ?? '',
      status: json['status'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'api': api,
      'code': code,
      'data': data.map((item) => item.toJson()).toList(),
      'message': message,
      'status': status,
    };
  }

  @override
  List<Object?> get props => [api, code, data, message, status];
}

/// Individual transaction item model
class TransactionItemModel extends Equatable {
  final String rrn;
  final String txnType;
  final String txnShortDesc;
  final String txnDesc;
  final String txnTime;
  final String txnAmount;
  final String feeAmount;
  final String channelType;
  final String deviceId;
  final String remarks;
  final DebitDetailsModel debitDetails;
  final CreditDetailsModel creditDetails;
  final int status;

  const TransactionItemModel({
    required this.rrn,
    required this.txnType,
    required this.txnShortDesc,
    required this.txnDesc,
    required this.txnTime,
    required this.txnAmount,
    required this.feeAmount,
    required this.channelType,
    required this.deviceId,
    required this.remarks,
    required this.debitDetails,
    required this.creditDetails,
    required this.status,
  });

  factory TransactionItemModel.fromJson(Map<String, dynamic> json) {
    return TransactionItemModel(
      rrn: json['rrn'] ?? '',
      txnType: json['txn_type'] ?? '',
      txnShortDesc: json['txn_short_desc'] ?? '',
      txnDesc: json['txn_desc'] ?? '',
      txnTime: json['txn_time'] ?? '',
      txnAmount: json['txn_amount'] ?? '',
      feeAmount: json['fee_amount'] ?? '',
      channelType: json['channel_type'] ?? '',
      deviceId: json['device_id'] ?? '',
      remarks: json['remarks'] ?? '',
      debitDetails: DebitDetailsModel.fromJson(json['debit_details'] ?? {}),
      creditDetails: CreditDetailsModel.fromJson(json['credit_details'] ?? {}),
      status: json['status'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rrn': rrn,
      'txn_type': txnType,
      'txn_short_desc': txnShortDesc,
      'txn_desc': txnDesc,
      'txn_time': txnTime,
      'txn_amount': txnAmount,
      'fee_amount': feeAmount,
      'channel_type': channelType,
      'device_id': deviceId,
      'remarks': remarks,
      'debit_details': debitDetails.toJson(),
      'credit_details': creditDetails.toJson(),
      'status': status,
    };
  }

  // Helper method to determine if this is a sent transaction
  bool isSentTransaction(int currentUserId) {
    return debitDetails.userId == currentUserId;
  }

  // Helper method to get the amount as double
  double get amountAsDouble {
    try {
      return double.parse(txnAmount);
    } catch (e) {
      return 0.0;
    }
  }

  // Helper method to get formatted date
  DateTime get formattedDate {
    try {
      return DateTime.parse(txnTime);
    } catch (e) {
      return DateTime.now();
    }
  }

  @override
  List<Object?> get props => [
        rrn,
        txnType,
        txnShortDesc,
        txnDesc,
        txnTime,
        txnAmount,
        feeAmount,
        channelType,
        deviceId,
        remarks,
        debitDetails,
        creditDetails,
        status,
      ];
}

/// Debit details model
class DebitDetailsModel extends Equatable {
  final int userId;
  final String acctNumber;
  final String cardNumber;
  final String currencyCode;

  const DebitDetailsModel({
    required this.userId,
    required this.acctNumber,
    required this.cardNumber,
    required this.currencyCode,
  });

  factory DebitDetailsModel.fromJson(Map<String, dynamic> json) {
    return DebitDetailsModel(
      userId: json['user_id'] ?? 0,
      acctNumber: json['acct_number'] ?? '',
      cardNumber: json['card_number'] ?? '',
      currencyCode: json['currency_code'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'acct_number': acctNumber,
      'card_number': cardNumber,
      'currency_code': currencyCode,
    };
  }

  @override
  List<Object?> get props => [userId, acctNumber, cardNumber, currencyCode];
}

/// Credit details model
class CreditDetailsModel extends Equatable {
  final int userId;
  final String acctNumber;
  final String cardNumber;
  final String currencyCode;

  const CreditDetailsModel({
    required this.userId,
    required this.acctNumber,
    required this.cardNumber,
    required this.currencyCode,
  });

  factory CreditDetailsModel.fromJson(Map<String, dynamic> json) {
    return CreditDetailsModel(
      userId: json['user_id'] ?? 0,
      acctNumber: json['acct_number'] ?? '',
      cardNumber: json['card_number'] ?? '',
      currencyCode: json['currency_code'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'acct_number': acctNumber,
      'card_number': cardNumber,
      'currency_code': currencyCode,
    };
  }

  @override
  List<Object?> get props => [userId, acctNumber, cardNumber, currencyCode];
}
