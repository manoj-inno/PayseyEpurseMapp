import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/get_personal_details/models/category_model.dart';
import '../../data/get_personal_details/models/disability_model.dart';
import '../../data/get_personal_details/models/gender_model.dart';
import '../../data/get_personal_details/models/qualification_model.dart';
import '../../data/get_personal_details/models/religion_model.dart';
import 'entities/nationality_entity.dart';
import 'entities/salary_range_entity.dart';

abstract class GetPersonalDetailsRepo {
  Future<Either<Failure, List<GenderModel>>> getGenderList();
  Future<Either<Failure, List<ReligionModel>>> getReligionList();
  Future<Either<Failure, List<CategoryModel>>> getCategories();
  Future<Either<Failure, List<DisabilityModel>>> getDisability();
  Future<Either<Failure, List<QualificationModel>>> getQualification();
  Future<Either<Failure, List<SalaryRangeEntity>>> getSalaryRanges();
  Future<Either<Failure, List<NationalityEntity>>> getNationalities();
}
