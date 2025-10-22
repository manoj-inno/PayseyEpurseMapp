import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:epurse/core/errors/failures.dart';
import 'package:epurse/features/registration/domain/register2_kyc/register_kyc_repo.dart';
import 'package:epurse/features/registration/domain/register2_kyc/entities/register_kyc_entity.dart';
import 'package:epurse/features/registration/domain/register2_kyc/entities/kyc_document_entity.dart';
import 'package:epurse/features/registration/domain/register2_kyc/entities/kyc_verification_entity.dart';
import 'package:epurse/features/registration/data/register2_kyc/models/register_kyc_model.dart';

part 'register_kyc_event.dart';
part 'register_kyc_state.dart';
part 'register_kyc_bloc.freezed.dart';

class RegisterKycBloc extends Bloc<RegisterKycEvent, RegisterKycState> {
  final RegisterKycRepository _repository;

  RegisterKycBloc({required RegisterKycRepository repository})
      : _repository = repository,
        super(const RegisterKycState.initial()) {
    on<RegisterKycEvent>((event, emit) async {
      await event.map(
        initiateRegisterKyc: (e) => _onInitiateRegisterKyc(e, emit),
      );
    });
  }

  Future<void> _onInitiateRegisterKyc(
      _InitiateRegisterKyc event, Emitter<RegisterKycState> emit) async {
    emit(const RegisterKycState.loading());
    final result = await _repository.registerKyc(event.request);
    result.fold(
      (failure) => _handleFailure(failure, emit, 'initiate KYC registration'),
      (entity) => emit(RegisterKycState.success(registerKyc: entity)),
    );
  }

  void _handleFailure(
      Failure failure, Emitter<RegisterKycState> emit, String operation) {
    if (failure is ServerDownFailure) {
      emit(const RegisterKycState.serverDown(
        message: 'Server is currently unavailable. Please try again later.',
      ));
    } else if (failure is ServerFailure && failure.statusCode == 503) {
      emit(const RegisterKycState.serverDown(
        message: 'Server is currently unavailable. Please try again later.',
      ));
    } else {
      emit(RegisterKycState.error(
        message: 'Failed to $operation: ${failure.message}',
      ));
    }
  }
}
