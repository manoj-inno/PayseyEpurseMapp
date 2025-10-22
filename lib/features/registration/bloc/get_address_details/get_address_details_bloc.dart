import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/get_address_details/usecases/get_address_proofs.dart';
import '../../domain/get_address_details/usecases/get_address_types.dart';
import 'get_address_details_event.dart';
import 'get_address_details_state.dart';

class GetAddressDetailsBloc
    extends Bloc<GetAddressDetailsEvent, GetAddressDetailsState> {
  final GetAddressTypesUsecase getAddressTypesUsecase;
  final GetAddressProofsUsecase getAddressProofsUsecase;

  GetAddressDetailsBloc(
      {required this.getAddressTypesUsecase,
      required this.getAddressProofsUsecase})
      : super(const GetAddressDetailsState.initial()) {
    on<GetAddressDetailsEvent>((event, emit) async {
      await event.when(
        getAddressProofs: (entityType) async {
          debugPrint("GetAddressDetailsBloc: Getting address proofs for entityType: $entityType");
          emit(const GetAddressDetailsState.addressProofsLoading());
          final result =
              await getAddressProofsUsecase.call(entityType: entityType);
          result.fold(
            (failure) {
              debugPrint("GetAddressDetailsBloc: Address proofs failed: $failure");
              _handleFailure(failure, emit, isForAddressProof: true);
            },
            (addressProofs) {
              debugPrint("GetAddressDetailsBloc: Address proofs loaded: ${addressProofs.map((p) => p.docType).toList()}");
              emit(GetAddressDetailsState.addressProofsLoaded(
                  addressProofs: addressProofs));
            },
          );
        },
        getAddressTypes: (entityType) async {
          emit(const GetAddressDetailsState.addressTypesLoading());
          final result =
              await getAddressTypesUsecase.call(custType: entityType);
          result.fold(
            (failure) =>
                _handleFailure(failure, emit, isForAddressProof: false),
            (addressTypes) => emit(GetAddressDetailsState.addressTypesLoaded(
                addressTypes: addressTypes)),
          );
        },
      );
    });
  }

  void _handleFailure(Failure failure, Emitter<GetAddressDetailsState> emit,
      {required bool isForAddressProof}) {
    debugPrint("__________HANDLING ADDRESS DETAILS FAILURE____________");
    debugPrint(failure.runtimeType.toString());

    if (failure is ServerDownFailure) {
      emit(const GetAddressDetailsState.serverDown(
          message: 'Server is currently unavailable. Please try again later.'));
    } else if (failure.statusCode != 200 && failure.statusCode != null) {
      // Treat any non-200 status code as server down
      emit(const GetAddressDetailsState.serverDown(
          message: 'Server is currently unavailable. Please try again later.'));
    } else {
      // Regular error (not server down)
      if (isForAddressProof) {
        emit(GetAddressDetailsState.addressProofsError(failure: failure));
      } else {
        emit(GetAddressDetailsState.addressTypesError(failure: failure));
      }
    }
  }
}
