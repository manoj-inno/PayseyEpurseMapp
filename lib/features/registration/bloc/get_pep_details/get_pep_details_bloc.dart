import 'package:bloc/bloc.dart';

import '../../domain/get_pep_details/usecases/get_pep.dart';
import '../../domain/get_pep_details/entities/relation_entity.dart';
import '../../domain/get_pep_details/usecases/get_relation.dart';
import '../../domain/get_pep_details/usecases/get_pep_type.dart';
import '../../domain/get_pep_details/entities/pep_entity.dart';
import '../../domain/get_pep_details/entities/pep_type_entity.dart';
import 'get_pep_details_event.dart';
import 'get_pep_details_state.dart';

class GetPepDetailsBloc extends Bloc<GetPepDetailsEvent, GetPepDetailsState> {
  final GetPepOptionsUseCase getPepOptionsUseCase;
  final GetRelationshipsUseCase getRelationshipsUseCase;
  final GetPepType getPepTypeUseCase;

  List<PepEntity>? _pepOptions;
  List<RelationshipEntity>? _relationships;
  List<PepTypeEntity>? _pepTypes;

  GetPepDetailsBloc(
    this.getPepOptionsUseCase,
    this.getRelationshipsUseCase,
    this.getPepTypeUseCase,
  ) : super(const GetPepDetailsState.initial()) {
    on<GetPepDetailsEvent>((event, emit) async {
      await event.when(
        getPepOptions: () async {
          if (_relationships == null || _pepTypes == null) {
            emit(const GetPepDetailsState.loading());
          }
          try {
            _pepOptions = await getPepOptionsUseCase.call();
            _emitLoadedIfReady(emit);
          } catch (e) {
            emit(GetPepDetailsState.error(message: e.toString()));
          }
        },
        getRelationships: () async {
          if (_pepOptions == null || _pepTypes == null) {
            emit(const GetPepDetailsState.loading());
          }
          try {
            _relationships = await getRelationshipsUseCase.call();
            _emitLoadedIfReady(emit);
          } catch (e) {
            emit(GetPepDetailsState.error(message: e.toString()));
          }
        },
        getPepTypes: () async {
          if (_pepOptions == null || _relationships == null) {
            emit(const GetPepDetailsState.loading());
          }
          try {
            _pepTypes = await getPepTypeUseCase.call();
            _emitLoadedIfReady(emit);
          } catch (e) {
            emit(GetPepDetailsState.error(message: e.toString()));
          }
        },
      );
    });
  }

  void _emitLoadedIfReady(Emitter<GetPepDetailsState> emit) {
    if (_pepOptions != null && _relationships != null && _pepTypes != null) {
      emit(GetPepDetailsState.loaded(
        pepOptions: _pepOptions!,
        relationships: _relationships!,
        pepTypes: _pepTypes!,
      ));
    }
  }
}
