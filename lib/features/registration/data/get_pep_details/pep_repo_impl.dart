import 'package:epurse/features/registration/data/get_pep_details/models/pep_type_model.dart';
import 'package:epurse/features/registration/domain/get_pep_details/entities/pep_type_entity.dart';
import 'package:epurse/features/registration/domain/get_pep_details/entities/relation_entity.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/get_pep_details/entities/pep_entity.dart';
import '../../domain/get_pep_details/pep_repo.dart';
import 'pep_datasource.dart';

class PoliticallyExposedRepositoryImpl implements PoliticallyExposedRepository {
  final PoliticallyExposedDataSource dataSource;

  PoliticallyExposedRepositoryImpl({required this.dataSource});

  @override
  Future<List<PepEntity>> getPepOptions() async {
    final models = await dataSource.getPepOptions();
    return models
        .map((model) => PepEntity(
              id: model.id,
              pepOptionName: model.pepOptionName,
              description: model.description,
              pepType: model.pepType,
            ))
        .toList();
  }

  @override
  Future<List<RelationshipEntity>> getRelationships() async {
    try {
      final result = await dataSource.getRelationships();
      return result
          .map((model) => RelationshipEntity(
                id: model.id,
                relationshipName: model.relationshipName,
                description: model.description,
              ))
          .toList();
    } catch (e) {
      throw ServerFailure(message: 'Failed to load relationships');
    }
  }

  @override
  Future<List<PepTypeEntity>> getPepTypes() async {
    final models = await dataSource.getPepTypes();
    return models
        .map((model) => model.toEntity())
        .toList();
  }
}
