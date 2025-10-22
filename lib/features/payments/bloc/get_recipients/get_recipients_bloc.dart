import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../../data/check_beneficiary/model/remote_beneficiary_model.dart';
import '../../data/check_beneficiary/model/contacts_model.dart';
import '../../domain/check_beneficiary/chech_beneficiary.dart';
import '../../domain/check_beneficiary/check_beneficiary_entity.dart';

part 'get_recipients_event.dart';
part 'get_recipients_state.dart';

class GetRecipientsBloc extends Bloc<GetRecipientsEvent, GetRecipientsState> {
  final _platform = const MethodChannel('innovitegra.epurse.ewallet/contacts');
  final CheckBeneficiaryUseCase? checkBeneficiaryUseCase;

  GetRecipientsBloc({this.checkBeneficiaryUseCase})
      : super(GetRecipientsInitial()) {
    on<LoadContacts>(_onLoadContacts);
    on<LoadContactsOnly>(_onLoadContactsOnly);
    on<SearchContacts>(_onSearchContacts);
  }

  Future<void> _onLoadContacts(
      LoadContacts event, Emitter<GetRecipientsState> emit) async {
    debugPrint("______________GET RECIPIENTS BLOC - LOAD CONTACTS____________");
    
    if (checkBeneficiaryUseCase == null) {
      debugPrint("❌ CheckBeneficiaryUseCase not provided");
      emit(ContactsError(message: 'CheckBeneficiaryUseCase not provided'));
      return;
    }

    emit(ContactsLoading());
    try {
      debugPrint("📱 Fetching contacts from device...");
      final result = await _platform.invokeMethod('getContacts');
      debugPrint("📱 Device contacts result: $result");
      
      final contacts = (result as List)
          .map((contact) => Contact(
                name: contact['name'] as String,
                number: contact['number'] as String,
              ))
          .toList();

      debugPrint("📱 Processed contacts count: ${contacts.length}");
      debugPrint("📱 Contacts: ${contacts.map((c) => '${c.name}: ${c.number}').toList()}");

      final beneficiaryRequest = CheckBeneficiaryRequest(
        beneficiaries: contacts
            .map((contact) => {
                  "label": contact.name,
                  "mobile": contact.number,
                })
            .toList(),
      );

      debugPrint("🔍 Beneficiary request: ${beneficiaryRequest.toJson()}");
      debugPrint("🔍 Calling check beneficiary API...");

      final beneficiaryResult =
          await checkBeneficiaryUseCase!(beneficiaryRequest);

      beneficiaryResult.fold(
        (failure) {
          debugPrint("❌ Beneficiary check failed: ${failure.toString()}");
          emit(ContactsLoaded(
            contacts: contacts,
            filteredContacts: contacts,
            beneficiaries: [],
          ));
        },
        (beneficiaries) {
          debugPrint("✅ Beneficiary check successful!");
          debugPrint("✅ Beneficiaries count: ${beneficiaries.length}");
          debugPrint("✅ Beneficiaries: ${beneficiaries.map((b) => '${b.label}: ${b.mobile}').toList()}");
          
          // Debug mobile number matching
          debugPrint("🔍 Mobile number matching analysis:");
          for (final contact in contacts) {
            final isBeneficiary = beneficiaries.any((b) => _normalizeMobileNumber(b.mobile) == _normalizeMobileNumber(contact.number));
            debugPrint("📱 Contact: ${contact.name} (${contact.number}) -> Beneficiary: $isBeneficiary");
            if (isBeneficiary) {
              final matchingBeneficiary = beneficiaries.firstWhere((b) => _normalizeMobileNumber(b.mobile) == _normalizeMobileNumber(contact.number));
              debugPrint("   └─ Matches: ${matchingBeneficiary.label} (${matchingBeneficiary.mobile})");
            }
          }
          
          emit(ContactsLoaded(
            contacts: contacts,
            filteredContacts: contacts,
            beneficiaries: beneficiaries,
          ));
        },
      );
    } catch (e) {
      debugPrint("❌ Error in _onLoadContacts: $e");
      emit(ContactsError(message: e.toString()));
    }
  }

  Future<void> _onLoadContactsOnly(
      LoadContactsOnly event, Emitter<GetRecipientsState> emit) async {
    debugPrint("______________GET RECIPIENTS BLOC - LOAD CONTACTS ONLY____________");
    
    emit(ContactsLoading());
    try {
      debugPrint("📱 Fetching contacts from device (contacts only)...");
      final result = await _platform.invokeMethod('getContacts');
      debugPrint("📱 Device contacts result: $result");
      
      final contacts = (result as List)
          .map((contact) => Contact(
                name: contact['name'] as String,
                number: contact['number'] as String,
              ))
          .toList();

      debugPrint("📱 Processed contacts count: ${contacts.length}");
      debugPrint("📱 Contacts: ${contacts.map((c) => '${c.name}: ${c.number}').toList()}");

      // Sort contacts alphabetically by name
      contacts.sort((a, b) => a.name.compareTo(b.name));
      debugPrint("📱 Contacts sorted alphabetically");

      emit(ContactsLoaded(
        contacts: contacts,
        filteredContacts: contacts,
        beneficiaries: [],
      ));
    } catch (e) {
      debugPrint("❌ Error in _onLoadContactsOnly: $e");
      emit(ContactsError(message: e.toString()));
    }
  }

  void _onSearchContacts(
      SearchContacts event, Emitter<GetRecipientsState> emit) {
    debugPrint("______________GET RECIPIENTS BLOC - SEARCH CONTACTS____________");
    debugPrint("🔍 Search query: '${event.query}'");
    
    if (state is ContactsLoaded) {
      final loadedState = state as ContactsLoaded;
      debugPrint("🔍 Total contacts available: ${loadedState.contacts.length}");
      
      final filteredContacts = loadedState.contacts.where((contact) {
        return contact.name.toLowerCase().contains(event.query.toLowerCase()) ||
            contact.number.contains(event.query);
      }).toList();
      
      debugPrint("🔍 Filtered contacts count: ${filteredContacts.length}");
      debugPrint("🔍 Filtered contacts: ${filteredContacts.map((c) => '${c.name}: ${c.number}').toList()}");
      
      emit(ContactsLoaded(
        contacts: loadedState.contacts,
        filteredContacts: filteredContacts,
        beneficiaries: loadedState.beneficiaries,
      ));
    } else {
      debugPrint("❌ Cannot search - state is not ContactsLoaded: ${state.runtimeType}");
    }
  }

  // Helper method to normalize mobile numbers for comparison
  String _normalizeMobileNumber(String mobile) {
    if (mobile.isEmpty) return '';
    
    // Remove all non-digit characters (spaces, +, -, etc.)
    String normalized = mobile.replaceAll(RegExp(r'[^\d]'), '');
    
    // Remove common country codes if present
    if (normalized.startsWith('91') && normalized.length > 10) {
      normalized = normalized.substring(2); // Remove +91
    }
    
    return normalized;
  }
}
