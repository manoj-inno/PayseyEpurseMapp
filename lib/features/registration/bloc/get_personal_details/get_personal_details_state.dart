part of 'get_personal_details_bloc.dart';

sealed class GetPersonalDetailsState extends Equatable {
  const GetPersonalDetailsState();

  @override
  List<Object?> get props => [];
}

class PersonalDetailsInitial extends GetPersonalDetailsState {}

class PersonalDetailsLoading extends GetPersonalDetailsState {
  final LoadingType loadingType;

  const PersonalDetailsLoading(this.loadingType);

  @override
  List<Object> get props => [loadingType];
}

enum LoadingType {
  gender,
  religion,
  category,
  disability,
  qualification,
  salaryRange
}

class PersonalDetailsLoaded extends GetPersonalDetailsState {
  final List<GenderEntity>? genderList;
  final List<ReligionEntity>? religionList;
  final List<CategoryEntity>? categoryList;
  final List<DisabilityEntity>? disabilityList;
  final List<QualificationEntity>? qualificationList;
  final List<SalaryRangeEntity>? salaryRangeList;
  final LoadingType? loadingType;
  final GenderEntity? selectedGender;
  final ReligionEntity? selectedReligion;
  final CategoryEntity? selectedCategory;
  final DisabilityEntity? selectedDisability;
  final QualificationEntity? selectedQualification;
  final String? selectedMaritalStatus;
  final SalaryRangeEntity? selectedSalaryRange;

  const PersonalDetailsLoaded({
    this.genderList,
    this.religionList,
    this.categoryList,
    this.disabilityList,
    this.qualificationList,
    this.salaryRangeList,
    this.loadingType,
    this.selectedGender,
    this.selectedReligion,
    this.selectedCategory,
    this.selectedDisability,
    this.selectedQualification,
    this.selectedMaritalStatus,
    this.selectedSalaryRange,
  });

  PersonalDetailsLoaded copyWith({
    List<GenderEntity>? genderList,
    List<ReligionEntity>? religionList,
    List<CategoryEntity>? categoryList,
    List<DisabilityEntity>? disabilityList,
    List<QualificationEntity>? qualificationList,
    List<SalaryRangeEntity>? salaryRangeList,
    LoadingType? loadingType,
    GenderEntity? selectedGender,
    ReligionEntity? selectedReligion,
    CategoryEntity? selectedCategory,
    DisabilityEntity? selectedDisability,
    QualificationEntity? selectedQualification,
    String? selectedMaritalStatus,
    SalaryRangeEntity? selectedSalaryRange,
  }) {
    return PersonalDetailsLoaded(
      genderList: genderList ?? this.genderList,
      religionList: religionList ?? this.religionList,
      categoryList: categoryList ?? this.categoryList,
      disabilityList: disabilityList ?? this.disabilityList,
      qualificationList: qualificationList ?? this.qualificationList,
      salaryRangeList: salaryRangeList ?? this.salaryRangeList,
      loadingType: loadingType,
      selectedGender: selectedGender ?? this.selectedGender,
      selectedReligion: selectedReligion ?? this.selectedReligion,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      selectedDisability: selectedDisability ?? this.selectedDisability,
      selectedQualification:
          selectedQualification ?? this.selectedQualification,
      selectedMaritalStatus:
          selectedMaritalStatus ?? this.selectedMaritalStatus,
      selectedSalaryRange: selectedSalaryRange ?? this.selectedSalaryRange,
    );
  }

  @override
  List<Object?> get props => [
        genderList,
        religionList,
        categoryList,
        disabilityList,
        qualificationList,
        salaryRangeList,
        loadingType,
        selectedGender,
        selectedReligion,
        selectedCategory,
        selectedDisability,
        selectedQualification,
        selectedMaritalStatus,
        selectedSalaryRange
      ];
}

class PersonalDetailsError extends GetPersonalDetailsState {
  final String message;

  const PersonalDetailsError(this.message);

  @override
  List<Object> get props => [message];
}

class PersonalDetailsServerDownError extends GetPersonalDetailsState {
  final String message;

  const PersonalDetailsServerDownError(this.message);

  @override
  List<Object> get props => [message];
}
