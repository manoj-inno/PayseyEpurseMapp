import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register4_address/models/register_address_model.dart';
import '../../domain/register4_address/register_address.dart';
import '../../domain/register4_address/register_address_entity.dart';

part 'register_address_event.dart';
part 'register_address_state.dart';
part 'register_address_bloc.freezed.dart';

class RegisterAddressBloc
    extends Bloc<RegisterAddressEvent, RegisterAddressState> {
  final RegisterAddressUseCase registerAddressUseCase;

  RegisterAddressBloc({required this.registerAddressUseCase})
      : super(const RegisterAddressState.initial()) {
    on<RegisterAddressEvent>((event, emit) async {
      await event.when(
        submit: (requestModel, refNumber, customerTypeId) async {
          emit(const RegisterAddressState.loading());

          final result = await registerAddressUseCase(
              requestModel, refNumber, customerTypeId);

          result.fold(
            (failure) {
              debugPrint("__________REGISTER ADDRESS FAILURE____________");
              debugPrint(failure.runtimeType.toString());

              if (failure is ServerDownFailure) {
                emit(RegisterAddressState.serverDown(
                    message:
                        'Server is currently unavailable. Please try again later.'));
              } else if (failure.statusCode != 200 &&
                  failure.statusCode != null) {
                // Treat any non-200 status code as server down
                emit(RegisterAddressState.serverDown(
                    message:
                        'Server is currently unavailable. Please try again later.'));
              } else {
                emit(RegisterAddressState.error(message: failure.message));
              }
            },
            (registerAddress) => emit(
                RegisterAddressState.loaded(registerAddress: registerAddress)),
          );
        },
      );
    });
  }
}
