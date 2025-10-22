import '../../../domain/check_beneficiary/check_beneficiary_entity.dart';

class CheckBeneficiaryRequest {
  final List<Map<String, String>> beneficiaries;

  CheckBeneficiaryRequest({required this.beneficiaries});

  List<Map<String, String>> toJson() => beneficiaries
      .map((b) {
        String formattedNumber =
            _formatMobileNumber(b["number"] ?? b["mobile"] ?? "");
        // Only include if the number is valid (length between 5 and 12 after formatting)
        if (_isValidMobileLength(formattedNumber)) {
          return {
            "label": b["name"] ?? b["label"] ?? "",
            "mobile": formattedNumber,
          };
        }
        return null;
      })
      .where((map) => map != null) // Remove null entries
      .cast<Map<String, String>>() // Cast to correct type
      .toList();

  String _formatMobileNumber(String number) {
    // Remove all spaces and special characters
    String cleaned =
        number.replaceAll(RegExp(r'\s+'), '').replaceAll(RegExp(r'[^\d+]'), '');

    // Ensure number starts with +91 if it's an Indian number
    if (!cleaned.startsWith('+')) {
      if (cleaned.startsWith('91')) {
        cleaned = '+$cleaned';
      } else {
        cleaned = '+91$cleaned';
      }
    }

    return cleaned;
  }

  bool _isValidMobileLength(String number) {
    // Remove the '+91' prefix for length check
    String numberWithoutPrefix = number.startsWith('+91')
        ? number.substring(3)
        : number.replaceAll('+', '');

    // Check if the remaining digits are between 5 and 12
    return numberWithoutPrefix.length >= 5 && numberWithoutPrefix.length <= 12;
  }
}

class CheckBeneficiaryResponse {
  final List<BeneficiaryEntity> beneficiaries;
  final int count;
  final String message;
  final String status;

  CheckBeneficiaryResponse({
    required this.beneficiaries,
    required this.count,
    required this.message,
    required this.status,
  });

  factory CheckBeneficiaryResponse.fromJson(Map<String, dynamic> json) {
    return CheckBeneficiaryResponse(
      beneficiaries: (json["beneficiaries"] as List? ?? [])
          .map((b) => BeneficiaryEntity(
                firstName: b["first_name"],
                lastName: b["last_name"],
                middleName: b["middle_name"] ?? "",
                label: b["label"],
                mobile: b["mobile"],
                userId: b["user_id"],
              ))
          .toList(),
      count: json["count"] ?? 0,
      message: json["message"] ?? "",
      status: json["status"] ?? "",
    );
  }
}
