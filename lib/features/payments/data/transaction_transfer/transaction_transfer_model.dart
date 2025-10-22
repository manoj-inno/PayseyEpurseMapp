import 'package:equatable/equatable.dart';

/// Request model for transaction transfer
class TransactionTransferRequestModel extends Equatable {
  final int receiverId;
  final double amount;
  final String? remarks;
  // Optional auth payloads
  final String? authData; // encrypted pin for Transaction Pin
  final String? authFilePath; // local file path for Face Verification image

  const TransactionTransferRequestModel({
    this.remarks,
    required this.receiverId,
    required this.amount,
    this.authData,
    this.authFilePath,
  });

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'receiver_id': receiverId,
      'amount': amount,
    };
    
    // Only include remarks if it's not null
    if (remarks != null) {
      json['remarks'] = remarks!;
    }
    if (authData != null) {
      json['auth_data'] = authData;
    }
    
    return json;
  }

  @override
  List<Object?> get props => [receiverId, amount, remarks, authData, authFilePath];
}

/// Response model for transaction transfer
class TransactionTransferResponseModel extends Equatable {
  final String status;
  final String message;
  final int code;
  final TransactionData? data;

  const TransactionTransferResponseModel({
    required this.status,
    required this.message,
    required this.code,
    this.data,
  });

  factory TransactionTransferResponseModel.fromJson(Map<String, dynamic> json) {
    return TransactionTransferResponseModel(
      status: json['status'] ?? '',
      message: json['message'] ?? '',
      code: json['code'] ?? 0,
      data: json['data'] != null ? TransactionData.fromJson(json['data']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'code': code,
      'data': data?.toJson(),
    };
  }

  // Helper getters for backward compatibility
  String? get transactionId => data?.rrn;
  String? get timestamp => data?.txnTime;

  @override
  List<Object?> get props => [status, message, code, data];
}

/// Transaction data model
class TransactionData extends Equatable {
  final String rrn;
  final String txnTime;

  const TransactionData({
    required this.rrn,
    required this.txnTime,
  });

  factory TransactionData.fromJson(Map<String, dynamic> json) {
    return TransactionData(
      rrn: json['rrn'] ?? '',
      txnTime: json['txn_time'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rrn': rrn,
      'txn_time': txnTime,
    };
  }

  @override
  List<Object?> get props => [rrn, txnTime];
}
