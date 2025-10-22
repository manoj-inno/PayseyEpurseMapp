import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:epurse/features/registration/data/get_business_details/models/mode_of_operation_model.dart';
import 'package:epurse/features/registration/data/get_business_details/models/business_type_model.dart';
import 'package:epurse/features/registration/data/get_business_details/models/turnover_model.dart';

import '../../../../core/errors/exception/exceptions.dart';
import '../../domain/get_business_details/business_details_repo.dart';
import '../../domain/get_business_details/entities/business_type_entity.dart';
import '../../domain/get_business_details/entities/mode_of_operation_entity.dart';
import '../../domain/get_business_details/entities/turnover_entity.dart';
import 'business_details_datasource.dart';

class BusinessDetailsRepositoryImpl implements BusinessDetailsRepository {
  final BusinessDetailsDataSource remoteDataSource;

  BusinessDetailsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Exception, List<BusinessTypeEntity>>> getBusinessList() async {
    try {
      final result = await remoteDataSource.getBusinessList();
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(
          ServerDownException(message: 'Failed to fetch business list'));
    }
  }

  @override
  Future<Either<Exception, List<ModeOfOperationEntity>>>
      getModeOfOperations() async {
    try {
      debugPrint('Repository: Getting mode of operations from data source');
      final result = await remoteDataSource.getModeOfOperations();
      debugPrint('Repository: Got ${result.length} mode of operations from data source');
      final entities = result.map((e) => e.toEntity()).toList();
      debugPrint('Repository: Converted to ${entities.length} entities');
      return Right(entities);
    } catch (e) {
      debugPrint('Repository: Error getting mode of operations: $e');
      return Left(
          ServerDownException(message: 'Failed to fetch mode of operations'));
    }
  }

  @override
  Future<Either<Exception, List<TurnoverEntity>>> getTurnovers() async {
    try {
      final result = await remoteDataSource.fetchTurnovers();
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerDownException(message: 'Failed to fetch turnovers'));
    }
  }
}
