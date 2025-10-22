import 'package:epurse/features/registration/domain/get_pep_details/entities/pep_type_entity.dart';

import '../pep_repo.dart';

class GetPepType {
  final PoliticallyExposedRepository repository;

  GetPepType(this.repository);

  Future<List<PepTypeEntity>> call() async {
    return await repository.getPepTypes();
  }
}
