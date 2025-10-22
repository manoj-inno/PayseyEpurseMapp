import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/get_personal_details/entities/category_entity.dart';
import '../../domain/get_personal_details/entities/disability_entity.dart';
import '../../domain/get_personal_details/entities/gender_entity.dart';
import '../../domain/get_personal_details/entities/qualification_entity.dart';
import '../../domain/get_personal_details/entities/religion_entity.dart';
import '../../domain/get_personal_details/entities/salary_range_entity.dart';
import '../../domain/get_personal_details/usecases/get_categories.dart';
import '../../domain/get_personal_details/usecases/get_disabilities.dart';
import '../../domain/get_personal_details/usecases/get_genders.dart';
import '../../domain/get_personal_details/usecases/get_qualifications.dart';
import '../../domain/get_personal_details/usecases/get_religions.dart';
import '../../domain/get_personal_details/usecases/get_salary_range.dart';
import 'get_personal_details_event.dart';

part 'get_personal_details_state.dart';

class GetPersonalDetailsBloc
    extends Bloc<GetPersonalDetailsEvent, GetPersonalDetailsState> {
  final GetGenders getGenders;
  final GetReligions getReligions;
  final GetCategories getCategories;
  final GetDisabilities getDisabilities;
  final GetQualifications getQualifications;
  final GetSalaryRange getSalaryRange;

  GetPersonalDetailsBloc(this.getGenders, this.getReligions, this.getCategories,
      this.getDisabilities, this.getQualifications, this.getSalaryRange)
      : super(PersonalDetailsInitial()) {
    on<FetchGenderList>((event, emit) async {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(loadingType: LoadingType.gender));
      } else {
        emit(PersonalDetailsLoaded(loadingType: LoadingType.gender));
      }

      final result = await getGenders.call();
      result.fold(
        (failure) {
          if (failure is ServerDownFailure) {
            emit(PersonalDetailsServerDownError(failure.message));
          } else {
            emit(PersonalDetailsError(failure.message));
          }
        },
        (genderList) {
          final List<GenderEntity> validGenders = genderList
              .map((genderModel) => GenderEntity(
                    id: genderModel.id,
                    genderName: genderModel.genderName,
                  ))
              .toList();

          final currentState = state;
          if (currentState is PersonalDetailsLoaded) {
            emit(currentState.copyWith(
                genderList: validGenders, loadingType: null));
          } else {
            emit(PersonalDetailsLoaded(genderList: validGenders));
          }
        },
      );
    });
    on<FetchReligionList>((event, emit) async {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(loadingType: LoadingType.religion));
      } else {
        emit(PersonalDetailsLoaded(loadingType: LoadingType.religion));
      }

      final result = await getReligions.call();
      result.fold(
        (failure) {
          if (failure.message.contains('Server connection failed') ||
              failure.message.contains('503 Service Unavailable')) {
            emit(PersonalDetailsServerDownError(failure.message));
          } else {
            emit(PersonalDetailsError(failure.message));
          }
        },
        (religionModels) {
          final List<ReligionEntity> religions = religionModels
              .map((model) => ReligionEntity(
                    id: model.id,
                    religionName: model.religionName,
                  ))
              .toList();

          final currentState = state;
          if (currentState is PersonalDetailsLoaded) {
            emit(currentState.copyWith(
                religionList: religions, loadingType: null));
          } else {
            emit(PersonalDetailsLoaded(religionList: religions));
          }
        },
      );
    });
    on<FetchCategoryList>((event, emit) async {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(loadingType: LoadingType.category));
      } else {
        emit(PersonalDetailsLoaded(loadingType: LoadingType.category));
      }

      final result = await getCategories.call();
      result.fold(
        (failure) {
          if (failure.message.contains('Server connection failed') ||
              failure.message.contains('503 Service Unavailable')) {
            emit(PersonalDetailsServerDownError(failure.message));
          } else {
            emit(PersonalDetailsError(failure.message));
          }
        },
        (categoryModels) {
          final List<CategoryEntity> categories = categoryModels
              .map((model) => CategoryEntity(
                    id: model.id,
                    categoryName: model.categoryName,
                    description: model.description,
                  ))
              .toList();

          final currentState = state;
          if (currentState is PersonalDetailsLoaded) {
            emit(currentState.copyWith(
                categoryList: categories, loadingType: null));
          } else {
            emit(PersonalDetailsLoaded(categoryList: categories));
          }
        },
      );
    });
    on<FetchDisabilityList>((event, emit) async {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(loadingType: LoadingType.disability));
      } else {
        emit(PersonalDetailsLoaded(loadingType: LoadingType.disability));
      }

      final result = await getDisabilities.call();
      result.fold(
        (failure) {
          if (failure.message.contains('Server connection failed') ||
              failure.message.contains('503 Service Unavailable')) {
            emit(PersonalDetailsServerDownError(failure.message));
          } else {
            emit(PersonalDetailsError(failure.message));
          }
        },
        (disabilityModels) {
          final List<DisabilityEntity> disabilities = disabilityModels
              .map((model) => DisabilityEntity(
                    id: model.id,
                    disabilityName: model.disabilityName,
                    description: model.description,
                  ))
              .toList();

          final currentState = state;
          if (currentState is PersonalDetailsLoaded) {
            emit(currentState.copyWith(
                disabilityList: disabilities, loadingType: null));
          } else {
            emit(PersonalDetailsLoaded(disabilityList: disabilities));
          }
        },
      );
    });
    on<FetchQualificationList>((event, emit) async {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(loadingType: LoadingType.qualification));
      } else {
        emit(PersonalDetailsLoaded(loadingType: LoadingType.qualification));
      }

      final result = await getQualifications.call();
      result.fold(
        (failure) {
          if (failure.message.contains('Server connection failed') ||
              failure.message.contains('503 Service Unavailable')) {
            emit(PersonalDetailsServerDownError(failure.message));
          } else {
            emit(PersonalDetailsError(failure.message));
          }
        },
        (qualificationModels) {
          final List<QualificationEntity> qualifications = qualificationModels
              .map((model) => QualificationEntity(
                    id: model.id,
                    qualificationName: model.qualificationName,
                    description: model.description,
                  ))
              .toList();

          final currentState = state;
          if (currentState is PersonalDetailsLoaded) {
            emit(currentState.copyWith(
                qualificationList: qualifications, loadingType: null));
          } else {
            emit(PersonalDetailsLoaded(qualificationList: qualifications));
          }
        },
      );
    });
    on<FetchSalaryRangeList>((event, emit) async {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(loadingType: LoadingType.salaryRange));
      } else {
        emit(PersonalDetailsLoaded(loadingType: LoadingType.salaryRange));
      }

      final result = await getSalaryRange.call();
      result.fold(
        (failure) {
          if (failure.message.contains('Server connection failed') ||
              failure.message.contains('503 Service Unavailable')) {
            emit(PersonalDetailsServerDownError(failure.message));
          } else {
            emit(PersonalDetailsError(failure.message));
          }
        },
        (salaryRanges) {
          final currentState = state;
          if (currentState is PersonalDetailsLoaded) {
            emit(currentState.copyWith(
                salaryRangeList: salaryRanges, loadingType: null));
          } else {
            emit(PersonalDetailsLoaded(salaryRangeList: salaryRanges));
          }
        },
      );
    });

    on<SelectGender>((event, emit) {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(selectedGender: event.gender));
      }
    });
    on<SelectReligion>((event, emit) {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(selectedReligion: event.religion));
      }
    });
    on<SelectCategory>((event, emit) {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(selectedCategory: event.category));
      }
    });
    on<SelectDisability>((event, emit) {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(selectedDisability: event.disability));
      }
    });
    on<SelectQualification>((event, emit) {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(selectedQualification: event.qualification));
      }
    });
    on<SelectMaritalStatus>((event, emit) {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(selectedMaritalStatus: event.maritalStatus));
      }
    });
    on<SelectSalaryRange>((event, emit) {
      final currentState = state;
      if (currentState is PersonalDetailsLoaded) {
        emit(currentState.copyWith(selectedSalaryRange: event.salaryRange));
      }
    });
  }
}
