import 'entities/pep_entity.dart';
import 'entities/pep_type_entity.dart';
import 'entities/relation_entity.dart';

abstract class PoliticallyExposedRepository {
  Future<List<PepEntity>> getPepOptions();
  Future<List<RelationshipEntity>> getRelationships();
  Future<List<PepTypeEntity>> getPepTypes();
}
