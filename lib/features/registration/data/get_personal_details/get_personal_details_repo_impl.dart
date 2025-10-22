import 'package:epurse/features/registration/data/get_personal_details/models/nationality_model.dart';
import 'package:epurse/features/registration/data/get_personal_details/models/salary_range_model.dart';

import '../../domain/get_personal_details/entities/nationality_entity.dart';
import '../../domain/get_personal_details/entities/salary_range_entity.dart';
import '../../domain/get_personal_details/get_personal_details_repo.dart';
import 'get_personal_details_datasource.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import 'models/gender_model.dart';
import 'models/religion_model.dart';
import 'models/category_model.dart';
import 'models/disability_model.dart';
import 'models/qualification_model.dart';

class GetPersonalDetailsRepoImpl implements GetPersonalDetailsRepo {
  final GetPersonalDetailsDatasource remoteDataSource;

  GetPersonalDetailsRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<GenderModel>>> getGenderList() async {
    try {
      final result = await remoteDataSource.getGenderList();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to get gender list'));
    }
  }

  @override
  Future<Either<Failure, List<ReligionModel>>> getReligionList() async {
    try {
      final result = await remoteDataSource.getReligionList();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to get religion list'));
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getCategories() async {
    try {
      final result = await remoteDataSource.getCategories();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to get categories'));
    }
  }

  @override
  Future<Either<Failure, List<DisabilityModel>>> getDisability() async {
    try {
      final result = await remoteDataSource.getDisability();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to get disability'));
    }
  }

  @override
  Future<Either<Failure, List<QualificationModel>>> getQualification() async {
    try {
      final result = await remoteDataSource.getQualification();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to get qualification'));
    }
  }

  @override
  Future<Either<Failure, List<SalaryRangeEntity>>> getSalaryRanges() async {
    try {
      final result = await remoteDataSource.getSalaryRanges();
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to get salary ranges'));
    }
  }

  @override
  Future<Either<Failure, List<NationalityEntity>>> getNationalities() async {
    try {
      final result = await remoteDataSource.getNationality();
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to get nationality'));
    }
  }
}
