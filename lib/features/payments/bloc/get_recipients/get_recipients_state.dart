part of 'get_recipients_bloc.dart';

sealed class GetRecipientsState extends Equatable {
  const GetRecipientsState();

  @override
  List<Object> get props => [];
}

class GetRecipientsInitial extends GetRecipientsState {}

class ContactsLoading extends GetRecipientsState {}

class ContactsLoaded extends GetRecipientsState {
  final List<Contact> contacts;
  final List<Contact> filteredContacts;
  final List<BeneficiaryEntity> beneficiaries;

  ContactsLoaded({
    required List<Contact> contacts,
    required List<Contact> filteredContacts,
    required this.beneficiaries,
  })  : contacts = _sortContactsWithBeneficiariesFirst(contacts, beneficiaries),
        filteredContacts = _sortContactsWithBeneficiariesFirst(
            filteredContacts, beneficiaries);

  static List<Contact> _sortContactsWithBeneficiariesFirst(
      List<Contact> contacts, List<BeneficiaryEntity> beneficiaries) {
    return [...contacts]..sort((a, b) {
        bool isABeneficiary =
            beneficiaries.any((ben) => _normalizeMobileNumber(ben.mobile) == _normalizeMobileNumber(a.number));
        bool isBBeneficiary =
            beneficiaries.any((ben) => _normalizeMobileNumber(ben.mobile) == _normalizeMobileNumber(b.number));

        if (isABeneficiary && !isBBeneficiary) return -1;
        if (!isABeneficiary && isBBeneficiary) return 1;
        return a.name.compareTo(b
            .name); // Sort alphabetically if both are beneficiaries or both are not
      });
  }

  // Static helper method to normalize mobile numbers for comparison
  static String _normalizeMobileNumber(String mobile) {
    if (mobile.isEmpty) return '';
    
    // Remove all non-digit characters (spaces, +, -, etc.)
    String normalized = mobile.replaceAll(RegExp(r'[^\d]'), '');
    
    // Remove common country codes if present
    if (normalized.startsWith('91') && normalized.length > 10) {
      normalized = normalized.substring(2); // Remove +91
    }
    
    return normalized;
  }

  bool isBeneficiary(String mobile) {
    return beneficiaries.any((b) => _normalizeMobileNumber(b.mobile) == _normalizeMobileNumber(mobile));
  }

  @override
  List<Object> get props => [contacts, filteredContacts, beneficiaries];
}

class ContactsError extends GetRecipientsState {
  final String message;

  const ContactsError({required this.message});

  @override
  List<Object> get props => [message];
}
