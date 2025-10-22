import '../entities/relation_entity.dart';
import '../pep_repo.dart';

class GetRelationshipsUseCase {
  final PoliticallyExposedRepository repository;

  GetRelationshipsUseCase(this.repository);

  Future<List<RelationshipEntity>> call() async {
    return await repository.getRelationships();
  }
}
