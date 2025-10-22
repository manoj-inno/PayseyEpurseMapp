import '../entities/pep_entity.dart';
import '../pep_repo.dart';

class GetPepOptionsUseCase {
  final PoliticallyExposedRepository repository;

  GetPepOptionsUseCase(this.repository);

  Future<List<PepEntity>> call() async {
    return await repository.getPepOptions();
  }
}
