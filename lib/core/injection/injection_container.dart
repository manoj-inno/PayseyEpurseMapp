import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/connectivity/bloc/connectivity_bloc.dart';
import '../../features/dashboard/cubit/balance_visibility_cubit.dart';
import '../../features/dashboard/bloc/atm_locator/atm_locator_bloc.dart';
import '../../features/dashboard/cubit/add_card_cubit.dart';
import '../../features/dashboard/cubit/chart_cubit.dart';
import '../../features/dashboard/cubit/pie_chart_cubit.dart';
import '../../features/dashboard/data/atm_locator/datasource/atm_locator_remote_datasource.dart';
import '../../features/dashboard/data/atm_locator/datasource/atm_locator_local_datasource.dart';
import '../../features/dashboard/data/atm_locator/atm_locator_repo_impl.dart';
import '../../features/dashboard/domain/atm_locator/atm_locator_repo.dart';
import '../../features/dashboard/domain/atm_locator/get_atm_locations.dart';
import '../../features/login/bloc/login/login_bloc.dart';
import '../../features/login/cubit/face_login_cubit.dart';
import '../../features/login/data/login/login_datasource.dart';
import '../../features/login/data/login/login_repo_impl.dart';
import '../../features/login/domain/login/login.dart';
import '../../features/login/domain/login/login_repo.dart';
import '../notification/bloc/notification_bloc.dart';
import '../../core/language/bloc/language_bloc.dart';
import '../../core/theme/bloc/theme_bloc.dart';
import '../notification/data/notification_remote_datasource.dart';
import '../notification/data/notification_repo_impl.dart';
import '../notification/domain/notification_repo.dart';
import '../../features/payments/bloc/get_recipients/get_recipients_bloc.dart';
import '../../features/payments/cubit/transaction_type_cubit.dart';
import '../../features/payments/data/check_beneficiary/datasource/check_beneficiary_remote_datasource.dart';
import '../../features/payments/data/check_beneficiary/datasource/check_beneficiary_local_datasource.dart';
import '../../features/payments/data/check_beneficiary/check_beneficiary_repo_impl.dart';
import '../../features/payments/domain/check_beneficiary/chech_beneficiary.dart';
import '../../features/payments/domain/check_beneficiary/check_beneficiary_repo.dart';
import '../../features/payments/data/transaction_list/transaction_list_datasource.dart';
import '../../features/payments/data/transaction_list/transaction_list_repository.dart';
import '../../features/payments/data/transaction_list/transaction_list_repository_impl.dart';
import '../../features/registration/bloc/register6_save_passcode/register_save_passcode_bloc.dart';
import '../../features/registration/bloc/get_account_types/customer_type_bloc.dart';
import '../../features/registration/bloc/get_additional_personal_details/get_additional_personal_details_bloc.dart';
import '../../features/registration/bloc/get_address_details/get_address_details_bloc.dart';
import '../../features/registration/bloc/get_business_details/get_business_details_bloc.dart';
import '../../features/registration/bloc/get_occupation_details/get_occupation_details_bloc.dart';
import '../../features/registration/bloc/get_pep_details/get_pep_details_bloc.dart';
import '../../features/registration/bloc/get_personal_details/get_personal_details_bloc.dart';
import '../../features/registration/bloc/id_card_extraction/back_image_extraction/back_image_extraction_bloc.dart';
import '../../features/registration/bloc/id_card_extraction/front_image_extraction/front_image_extraction_bloc.dart';
import '../../features/registration/bloc/liveliness_detection/liveliness_detection_bloc.dart';
import '../../features/registration/bloc/register2_kyc/register_kyc_bloc.dart';
import '../../features/registration/bloc/register3_occupation/register_occupation_bloc.dart';
import '../../features/registration/bloc/register5_pep/register_pep_bloc.dart';
import '../../features/registration/bloc/register4_address/register_address_bloc.dart';
import '../../features/registration/bloc/register7_business_details/register_business_details_bloc.dart';
import '../../features/registration/bloc/register8_mode_of_op/register_mode_of_op_bloc.dart';
import '../../features/registration/bloc/upload_image/upload_image_bloc.dart';
import '../../features/registration/data/face_matching/face_matching_datasource.dart';
import '../../features/registration/data/face_matching/face_matching_repo_impl.dart';
import '../../features/registration/data/get_account_types/customer_type_datasource.dart';
import '../../features/registration/data/get_account_types/customer_type_repo_impl.dart';
import '../../features/registration/data/get_address_details/get_address_details_datasource.dart';
import '../../features/registration/data/get_address_details/get_address_details_repo_impl.dart';
import '../../features/registration/data/get_business_details/business_details_datasource.dart';
import '../../features/registration/data/get_business_details/business_details_repo_impl.dart';
import '../../features/registration/data/get_occupation_details/get_occupation_details_datasource.dart';
import '../../features/registration/data/get_occupation_details/get_occupation_details_repo_impl.dart';
import '../../features/registration/data/get_pep_details/pep_datasource.dart';
import '../../features/registration/data/get_pep_details/pep_repo_impl.dart';
import '../../features/registration/data/get_personal_details/get_personal_details_datasource.dart';
import '../../features/registration/data/get_personal_details/get_personal_details_repo_impl.dart';
import '../../features/registration/data/id_card_extraction/id_card_extraction_datasource.dart';
import '../../features/registration/data/id_card_extraction/id_card_extraction_repo_impl.dart';
import '../../features/registration/data/register2_kyc/register_kyc_datasource.dart';
import '../../features/registration/data/register2_kyc/register_repo_impl.dart';
import '../../features/registration/data/register3_occupation/register_occupation_datasource.dart';
import '../../features/registration/data/register3_occupation/register_occupation_repo_impl.dart';
import '../../features/registration/data/register4_address/register_address_datasource.dart';
import '../../features/registration/data/register4_address/register_address_repo_impl.dart';
import '../../features/registration/data/register5_pep/register_pep_datasource.dart';
import '../../features/registration/data/register5_pep/register_pep_repo_impl.dart';
import '../../features/registration/data/register6_save_passcode/register_passcode_datasource.dart';
import '../../features/registration/data/register6_save_passcode/register_passcode_repo_impl.dart';
import '../../features/registration/data/register7_business_details/register_business_details_datasource.dart';
import '../../features/registration/data/register7_business_details/register_business_repo_impl.dart';
import '../../features/registration/data/register8_mode_of_op/register_mode_of_op_datasource.dart';
import '../../features/registration/data/register8_mode_of_op/register_mode_of_op_repo_impl.dart';
import '../../features/registration/data/upoad_image/upload_image_datasource.dart';
import '../../features/registration/data/upoad_image/upload_image_repo_impl.dart';
import '../../features/registration/domain/face_matching/face_matching_repo.dart';
import '../../features/registration/domain/face_matching/match_faces.dart';
import '../../features/registration/domain/get_account_types/customer_type_repo.dart';
import '../../features/registration/domain/get_account_types/usecases/get_account_sub_type.dart';
import '../../features/registration/domain/get_account_types/usecases/get_account_type.dart';
import '../../features/registration/domain/get_account_types/usecases/get_customer_type.dart';
import '../../features/registration/domain/get_address_details/get_address_repo.dart';
import '../../features/registration/domain/get_address_details/usecases/get_address_proofs.dart';
import '../../features/registration/domain/get_address_details/usecases/get_address_types.dart';
import '../../features/registration/domain/get_business_details/business_details_repo.dart';
import '../../features/registration/domain/get_business_details/usecases/get_business_types.dart';
import '../../features/registration/domain/get_business_details/usecases/get_mode_of_operation.dart';
import '../../features/registration/domain/get_business_details/usecases/get_turnover.dart';
import '../../features/registration/domain/get_occupation_details/get_occupation_details_repo.dart';
import '../../features/registration/domain/get_occupation_details/usecases/get_occupations.dart';
import '../../features/registration/domain/get_occupation_details/usecases/get_source_funds.dart';
import '../../features/registration/domain/get_pep_details/pep_repo.dart';
import '../../features/registration/domain/get_pep_details/usecases/get_pep.dart';
import '../../features/registration/domain/get_pep_details/usecases/get_pep_type.dart';
import '../../features/registration/domain/get_pep_details/usecases/get_relation.dart';
import '../../features/registration/domain/get_personal_details/get_personal_details_repo.dart';
import '../../features/registration/domain/get_personal_details/usecases/get_categories.dart';
import '../../features/registration/domain/get_personal_details/usecases/get_disabilities.dart';
import '../../features/registration/domain/get_personal_details/usecases/get_genders.dart';
import '../../features/registration/domain/get_personal_details/usecases/get_nationality.dart';
import '../../features/registration/domain/get_personal_details/usecases/get_qualifications.dart';
import '../../features/registration/domain/get_personal_details/usecases/get_religions.dart';
import '../../features/registration/domain/get_personal_details/usecases/get_salary_range.dart';
import '../../features/registration/domain/id_card_extraction/id_card_extraction_repo.dart';
import '../../features/registration/domain/id_card_extraction/usecases/perform_back_ocr.dart';
import '../../features/registration/domain/id_card_extraction/usecases/perform_front_ocr.dart';
import '../../features/registration/domain/register1_reference/usecases/generate_otp.dart';
import '../../features/registration/domain/register1_reference/usecases/generate_reference.dart';
import '../../features/registration/domain/register1_reference/usecases/update_primary_device.dart';
import '../../features/registration/domain/register1_reference/usecases/verify_mobile_otp.dart';
import '../../features/registration/domain/register2_kyc/register_kyc.dart';
import '../../features/registration/domain/register2_kyc/register_kyc_repo.dart';
import '../../features/registration/domain/register3_occupation/register_occupation.dart';
import '../../features/registration/domain/register3_occupation/register_occupation_repo.dart';
import '../../features/registration/domain/register4_address/register_address.dart';
import '../../features/registration/domain/register4_address/register_address_repo.dart';
import '../../features/registration/domain/register5_pep/register_pep.dart';
import '../../features/registration/domain/register5_pep/register_pep_repo.dart';
import '../../features/registration/domain/register6_save_passcode/register_passcode_repo.dart';
import '../../features/registration/domain/register6_save_passcode/usecase/complete_reg.dart';
import '../../features/registration/domain/register6_save_passcode/usecase/save_passcode.dart';
import '../../features/registration/domain/register7_business_details/register_business_details.dart';
import '../../features/registration/domain/register7_business_details/register_business_details_repo.dart';
import '../../features/registration/domain/register8_mode_of_op/register_mode_of_op.dart';
import '../../features/registration/domain/register8_mode_of_op/register_mode_of_op_repo.dart';
import '../../features/registration/domain/upload_image/upload_image.dart';
import '../../features/registration/domain/upload_image/upload_image_repo.dart';
import '../../features/splash/cubit/device_id_cubit.dart';
import '../network/network_info.dart';
import '../storage/preferences_manager.dart';
import '../../features/registration/data/register1_reference/register_reference_repo_impl.dart';
import '../../features/registration/domain/register1_reference/register_reference_repo.dart';
import '../../features/registration/domain/register1_reference/usecases/check_mobile.dart';
import '../../features/registration/bloc/register1_reference/register_reference_bloc.dart';
import '../../features/registration/data/register1_reference/register_reference_datasource.dart';
import '../../features/registration/cubit/country_code/country_code_cubit.dart';
import '../../features/registration/cubit/mobile_input_cubit.dart';
import '../../core/storage/hive_manager.dart' as hive;
import '../../features/registration/bloc/address_management/address_management_bloc.dart';
import '../token/data/refresh_token_datasource.dart';
import '../token/refresh_token_handler.dart';
import '../routing/navigation_service.dart';
import '../usecase/textformfield/cubit.dart';
import '../usecase/textformfield/usecase.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // ? EXTERNAL
  // FIREBASE MESSAGING
  sl.registerLazySingleton<FirebaseMessaging>(() => FirebaseMessaging.instance);
  // FLUTTER LOCAL NOTIFICATIONS
  sl.registerLazySingleton<FlutterLocalNotificationsPlugin>(
      () => FlutterLocalNotificationsPlugin());
  // CONNECTIVITY
  sl.registerLazySingleton<Connectivity>(() => Connectivity());
  sl.registerLazySingleton<ConnectivityBloc>(() => ConnectivityBloc(sl()));
  // SHARED PREFERENCES
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  // HTTP
  sl.registerLazySingleton<http.Client>(() => http.Client());
  // NETWORK INFO
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(
        connectivityBloc: sl(),
      ));

  // ? CORE
  // NAVIGATION SERVICE
  sl.registerLazySingleton<NavigationService>(() => NavigationService());
  // CONTROLLER MANAGER
  sl.registerSingleton<StoreTextControllerUseCase>(
      StoreTextControllerUseCaseImpl());
  sl.registerSingleton<TextFormFieldControllerManagerCubit>(
      TextFormFieldControllerManagerCubit(sl<StoreTextControllerUseCase>()));
  // NOTIFICATIONS
  sl.registerLazySingleton<NotificationBloc>(() => NotificationBloc(sl()));
  sl.registerLazySingleton<NotificationRemoteDataSource>(
    () => NotificationRemoteDataSource(sl(), sl()),
  );
  sl.registerLazySingleton<NotificationRepository>(
    () => NotificationRepositoryImpl(sl()),
  );
  // ADDRESS MANAGEMENT
  sl.registerLazySingleton<AddressManagementBloc>(
      () => AddressManagementBloc(hiveManager: sl()));

  // ? HELPERS
  // PREFERENCES MANAGER
  final preferencesManager = await PreferencesManager.getInstance();
  sl.registerLazySingleton<PreferencesManager>(() => preferencesManager);
  // HIVE MANAGER
  final hiveManager = await hive.HiveManager.getInstance();
  sl.registerLazySingleton<hive.HiveManager>(() => hiveManager);
  // REFRESH TOKEN
  sl.registerLazySingleton<RefreshTokenDataSource>(
    () => RefreshTokenDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<RefreshTokenHandler>(
    () => RefreshTokenHandler(refreshTokenDataSource: sl()),
  );

  // ? THEME
  sl.registerLazySingleton<ThemeBloc>(
      () => ThemeBloc(preferencesManager: sl()));

  // ? LANGUAGE
  sl.registerLazySingleton<LanguageBloc>(
      () => LanguageBloc(preferencesManager: sl()));

  // ? CUBITS
  // DEVICE ID
  sl.registerFactory<DeviceIdCubit>(() => DeviceIdCubit());
  // COUNTRY CODE
  sl.registerFactory<CountryCodeCubit>(() => CountryCodeCubit());
  // MOBILE INPUT
  sl.registerFactory<MobileInputCubit>(() => MobileInputCubit());
  // PAYMENTS
  sl.registerFactory<TransactionTypeCubit>(() => TransactionTypeCubit());
  // FACE LOGIN
  sl.registerFactory<FaceLoginCubit>(() => FaceLoginCubit());
  // BALANCE VISIBILITY
  sl.registerFactory<BalanceVisibilityCubit>(() => BalanceVisibilityCubit());
  // ADD CARD
  sl.registerFactory<AddCardCubit>(() => AddCardCubit());
  // PIE CHART
  sl.registerFactory<PieChartCubit>(() => PieChartCubit());
  // CHART
  sl.registerFactory<ChartCubit>(() => ChartCubit());

  // ? MASTERS
  // CUSTOMER TYPE
  sl.registerFactory<CustomerTypeBloc>(() => CustomerTypeBloc(
      getCustomerTypes: sl(),
      getAccountTypesUseCase: sl(),
      getAccountSubTypesUseCase: sl()));
  sl.registerLazySingleton<GetCustomerTypes>(
      () => GetCustomerTypes(repository: sl()));
  sl.registerLazySingleton<GetAccountTypesUseCase>(
      () => GetAccountTypesUseCase(repository: sl()));
  sl.registerLazySingleton<GetAccountSubTypesUseCase>(
      () => GetAccountSubTypesUseCase(repository: sl()));
  sl.registerLazySingleton<CustomerTypeRepository>(
      () => CustomerTypeRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<CustomerTypeRemoteDataSource>(
      () => CustomerTypeRemoteDataSourceImpl(client: sl()));
  // GET PERSONAL DETAILS
  sl.registerFactory<GetPersonalDetailsBloc>(
      () => GetPersonalDetailsBloc(sl(), sl(), sl(), sl(), sl(), sl()));
  sl.registerLazySingleton<GetGenders>(() => GetGenders(sl()));
  sl.registerLazySingleton<GetReligions>(() => GetReligions(sl()));
  sl.registerLazySingleton<GetCategories>(() => GetCategories(sl()));
  sl.registerLazySingleton<GetDisabilities>(() => GetDisabilities(sl()));
  sl.registerLazySingleton<GetQualifications>(() => GetQualifications(sl()));
  sl.registerLazySingleton<GetSalaryRange>(() => GetSalaryRange(sl()));
  sl.registerLazySingleton<GetPersonalDetailsRepo>(
      () => GetPersonalDetailsRepoImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<GetPersonalDetailsDatasource>(
      () => GetPersonalDetailsDatasourceImpl(client: sl()));
  // GET ADDITIONAL PERSONAL DETAILS
  sl.registerLazySingleton<GetNationality>(
      () => GetNationality(repository: sl()));
  sl.registerLazySingleton<GetAdditionalPersonalDetailsBloc>(
      () => GetAdditionalPersonalDetailsBloc(getNationality: sl()));
  // GET OCCUPATION DETAILS
  sl.registerFactory<GetOccupationDetailsBloc>(() => GetOccupationDetailsBloc(
        getSourceFunds: sl(),
        getOccupations: sl(),
      ));
  sl.registerLazySingleton<GetSourceFunds>(() => GetSourceFunds(repo: sl()));
  sl.registerLazySingleton<GetOccupations>(() => GetOccupations(repo: sl()));
  sl.registerLazySingleton<GetOccupationDetailsRepo>(
      () => GetOccupationDetailsRepoImpl(occupationDataSource: sl()));
  sl.registerLazySingleton<GetOccupationDetailsDataSource>(
      () => GetOccupationDetailsDataSourceImpl(client: sl()));
  // GET ADDRESS DETAILS
  sl.registerFactory<GetAddressDetailsBloc>(() => GetAddressDetailsBloc(
      getAddressTypesUsecase: sl(), getAddressProofsUsecase: sl()));
  sl.registerLazySingleton<GetAddressTypesUsecase>(
      () => GetAddressTypesUsecase(repo: sl()));
  sl.registerLazySingleton<GetAddressProofsUsecase>(
      () => GetAddressProofsUsecase(repo: sl()));
  sl.registerLazySingleton<GetAddressDetailsRepo>(
      () => GetAddressDetailsRepoImpl(dataSource: sl()));
  sl.registerLazySingleton<GetAddressDetailsDataSource>(
      () => GetAddressDetailsDataSourceImpl(client: sl()));
  // GET PEP DETAILS
  sl.registerFactory<GetPepDetailsBloc>(
      () => GetPepDetailsBloc(sl(), sl(), sl()));
  sl.registerLazySingleton<GetPepOptionsUseCase>(
      () => GetPepOptionsUseCase(sl()));
  sl.registerLazySingleton<GetRelationshipsUseCase>(
      () => GetRelationshipsUseCase(sl()));
  sl.registerLazySingleton<GetPepType>(() => GetPepType(sl()));
  sl.registerLazySingleton<PoliticallyExposedRepository>(
      () => PoliticallyExposedRepositoryImpl(dataSource: sl()));
  sl.registerLazySingleton<PoliticallyExposedDataSource>(
      () => PoliticallyExposedDataSourceImpl(client: sl()));
  // GET BUSINESS DETAILS
  sl.registerFactory<GetBusinessDetailsBloc>(() => GetBusinessDetailsBloc(
      getBusinessTypesUseCase: sl(),
      getModeOfOperationUseCase: sl(),
      getTurnoversUseCase: sl()));
  sl.registerLazySingleton<GetBusinessTypesUseCase>(
      () => GetBusinessTypesUseCase(sl()));
  sl.registerLazySingleton<GetModeOfOperationUseCase>(
      () => GetModeOfOperationUseCase(sl()));
  sl.registerLazySingleton<GetTurnoversUseCase>(
      () => GetTurnoversUseCase(sl()));
  sl.registerLazySingleton<BusinessDetailsRepository>(
      () => BusinessDetailsRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<BusinessDetailsDataSource>(
      () => BusinessDetailsDataSourceImpl(client: sl()));

  // ? REGISTRATION BLOCS
  // REGISTER REFERENCE
  sl.registerLazySingleton<RegisterReferenceDatasource>(
    () => RegisterReferenceDatasourceImpl(client: sl()),
  );
  sl.registerLazySingleton<RegisterReferenceRepo>(
    () => RegisterReferenceRepoImpl(
        datasource: sl<RegisterReferenceDatasource>()),
  );
  sl.registerLazySingleton<CheckMobile>(() => CheckMobile(sl()));
  sl.registerLazySingleton<GenerateOtpUseCase>(() => GenerateOtpUseCase(sl()));
  sl.registerLazySingleton<VerifyMobileOtpUseCase>(
      () => VerifyMobileOtpUseCase(sl()));
  sl.registerLazySingleton<GenerateReferenceUseCase>(
      () => GenerateReferenceUseCase(sl()));
  sl.registerLazySingleton<UpdatePrimaryDeviceUsecase>(
      () => UpdatePrimaryDeviceUsecase(registerReferenceRepo: sl()));
  sl.registerLazySingleton<RegisterReferenceBloc>(() => RegisterReferenceBloc(
      checkMobileUseCase: sl(),
      generateOtpUseCase: sl(),
      verifyMobileOtpUseCase: sl(),
      generateReferenceUseCase: sl(),
      updatePrimaryDeviceUseCase: sl()));
  // REGISTER KYC
  sl.registerLazySingleton<RegisterKycRemoteDataSource>(
    () => RegisterKycRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<RegisterKycRepository>(
    () => RegisterKycRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<RegisterKycUseCase>(() => RegisterKycUseCase(sl()));
  sl.registerFactory<RegisterKycBloc>(() => RegisterKycBloc(repository: sl()));
  // REGISTER OCCUPATION
  sl.registerLazySingleton<RegisterOccupationRemoteDataSource>(
    () => RegisterOccupationRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<RegisterOccupationRepository>(
    () => RegisterOccupationRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<RegisterOccupationUseCase>(
      () => RegisterOccupationUseCase(repository: sl()));
  sl.registerFactory<RegisterOccupationBloc>(
      () => RegisterOccupationBloc(registerOccupation: sl()));
  // REGISTER ADDRESS
  sl.registerLazySingleton<RegisterAddressRemoteDataSource>(
    () => RegisterAddressRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<RegisterAddressRepository>(
    () => RegisterAddressRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<RegisterAddressUseCase>(
      () => RegisterAddressUseCase(sl()));
  sl.registerFactory<RegisterAddressBloc>(
      () => RegisterAddressBloc(registerAddressUseCase: sl()));
  // REGISTER PEP
  sl.registerLazySingleton<RegisterPepRemoteDataSource>(
    () => RegisterPepRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<RegisterPepRepo>(
    () => RegisterPepRepoImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<RegisterPepUseCase>(() => RegisterPepUseCase(sl()));
  sl.registerFactory<RegisterPepBloc>(
      () => RegisterPepBloc(registerPepUseCase: sl()));
  // REGISTER SAVE PASSCODE
  sl.registerLazySingleton<SavePasscodeRemoteDataSource>(
    () => SavePasscodeRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<SavePasscodeRepository>(
    () => SavePasscodeRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<SavePasscodeUseCase>(
      () => SavePasscodeUseCase(sl()));
  sl.registerLazySingleton<CompleteRegUseCase>(() => CompleteRegUseCase(sl()));
  sl.registerFactory<RegisterSavePasscodeBloc>(() => RegisterSavePasscodeBloc(
      savePasscodeUseCase: sl(), completeRegUseCase: sl()));
  // REGISTER BUSINESS
  sl.registerLazySingleton<RegisterBusinessRemoteDataSource>(
    () => RegisterBusinessRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<RegisterBusinessRepository>(
    () => RegisterBusinessRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<RegisterBusinessUseCase>(
      () => RegisterBusinessUseCase(repository: sl()));
  sl.registerFactory<RegisterBusinessDetailsBloc>(
      () => RegisterBusinessDetailsBloc(registerBusinessDetails: sl()));
  // REGISTER MODE OF OPERATION
  sl.registerLazySingleton<RegisterModeOfOperationRemoteDataSource>(
    () => RegisterModeOfOperationRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<RegisterModeOfOperationRepository>(
    () => RegisterModeOfOperationRepositoryImpl(dataSource: sl()),
  );
  sl.registerLazySingleton<RegisterModeOfOperation>(
      () => RegisterModeOfOperation(repository: sl()));
  sl.registerFactory<RegisterModeOfOpBloc>(
      () => RegisterModeOfOpBloc(registerModeOfOperation: sl()));

  // ? EKYC
  // ID CARD EXTRACTION
  sl.registerLazySingleton<IdCardExtractionDataSource>(
    () => IdCardExtractionDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<IdCardExtractionRepo>(
    () => IdCardExtractionRepoImpl(sl()),
  );
  sl.registerLazySingleton<PerformFrontOcr>(() => PerformFrontOcr(sl()));
  sl.registerLazySingleton<PerformBackOcr>(() => PerformBackOcr(sl()));
  sl.registerFactory<FrontImageExtractionBloc>(
      () => FrontImageExtractionBloc(sl()));
  sl.registerFactory<BackImageExtractionBloc>(
      () => BackImageExtractionBloc(sl()));
  // LIVELINESS DETECTION
  sl.registerFactory<LivelinessDetectionBloc>(
      () => LivelinessDetectionBloc(sl()));
  sl.registerLazySingleton<MatchFacesUseCase>(() => MatchFacesUseCase(sl()));
  sl.registerLazySingleton<FaceMatchRemoteDataSource>(
    () => FaceMatchRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<FaceMatchRepository>(
    () => FaceMatchRepositoryImpl(sl()),
  );

  // ? UPLOAD
  // UPLOAD IMAGES
  sl.registerLazySingleton<UploadRemoteDataSource>(
    () => UploadRemoteDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<UploadRepository>(
    () => UploadRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<UploadImagesUseCase>(
      () => UploadImagesUseCase(sl()));
  sl.registerFactory<UploadImageBloc>(() => UploadImageBloc(sl()));

  // ? LOGIN
  sl.registerLazySingleton<LoginDataSource>(
    () => LoginDataSourceImpl(client: sl()),
  );
  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<LoginUseCase>(() => LoginUseCase(repository: sl()));
  sl.registerFactory<LoginBloc>(() => LoginBloc(loginUseCase: sl()));

  // ? DASHBOARD
  // ATM LOCATOR
  sl.registerLazySingleton<AtmRemoteDataSource>(
    () => AtmRemoteDataSourceImpl(
      client: sl(),
      refreshTokenHandler: sl(),
    ),
  );
  sl.registerLazySingleton<AtmLocalDataSource>(
    () => AtmLocalDataSourceImpl(hiveManager: sl()),
  );
  sl.registerLazySingleton<AtmRepository>(
    () => AtmRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<GetAtmLocationsUseCase>(
      () => GetAtmLocationsUseCase(sl()));
  sl.registerFactory<AtmLocatorBloc>(
      () => AtmLocatorBloc(getAtmLocationsUseCase: sl()));

  // CHECK BENEFICIARY
  sl.registerLazySingleton<BeneficiaryRemoteDataSource>(
    () => BeneficiaryRemoteDataSourceImpl(
      client: sl(),
      refreshTokenHandler: sl<RefreshTokenHandler>(),
    ),
  );
  sl.registerLazySingleton<BeneficiaryLocalDataSource>(
    () => BeneficiaryLocalDataSourceImpl(hiveManager: sl()),
  );
  sl.registerLazySingleton<BeneficiaryRepository>(
    () => BeneficiaryRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<CheckBeneficiaryUseCase>(
      () => CheckBeneficiaryUseCase(sl()));
  sl.registerFactory<GetRecipientsBloc>(
    () => GetRecipientsBloc(checkBeneficiaryUseCase: sl()),
  );

  // TRANSACTION LIST
  sl.registerLazySingleton<TransactionListDataSource>(
    () => TransactionListDataSourceImpl(
      client: sl(),
      refreshTokenHandler: sl<RefreshTokenHandler>(),
    ),
  );
  sl.registerLazySingleton<TransactionListRepository>(
    () => TransactionListRepositoryImpl(dataSource: sl()),
  );
}
