import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'app_title': 'Notifications Demo',
      'send_test_notification': 'Send Test Notification',
      'sending_notification': 'Sending test notification...',
      'epurse': 'ePurse',
      'e_wallet_at_your_fingertips': 'eWallet at your Fingertips',
      'register': 'Register',
      'enter_mobile': 'Please Enter Mobile Number',
      'enter_otp': 'Enter OTP',
      'enter_name': 'Enter Name',
      'login': 'Login',
      'english': 'English',
      'farsi': 'فارسی',
      'arabic': 'العربية',
      'french': 'Français',
      'privacy_policy': 'Privacy Policy',
      'effective_date': 'Effective Date: 1st November 2024',
      'privacy_policy_intro':
          '''Innovitegra Solutions Private Limited ("we," "our," or "us") is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile applications ("Apps"), and other related services. By using our Apps, you agree to the collection and use of your information in accordance with this Privacy Policy.''',
      'information_we_collect': '1 - Information We Collect',
      'personal_information': '1.1 - Personal Information',
      'personal_information_details': '''* Full Name
* Date of Birth
* Contact Details (Email, Phone Number)
* Other personal information's like address, salary etc.
* National ID, Passport, or Driving License details
* Selfies or photographs for identity verification (eKYC)''',
      'device_information': '1.2 - Device Information',
      'device_information_details':
          '''* Location Data: To verify your location for security and service personalization.
* Camera Access: For capturing images of documents and selfies during the registration process.
* Storage: To temporarily store or retrieve uploaded images/ documents.
* Contacts (if permitted): To enable features such as sending payment requests or invitations.''',
      'how_we_use_your_information': '2 - How We Use Your Information',
      'how_we_use_your_information_details':
          '''* To verify and authenticate your identity (eKYC).
* To provide, personalize, and improve our services.
* To comply with legal and regulatory requirements.
* To communicate with you regarding updates, promotions, or service notifications.''',
      'sharing_your_information': '3 - Sharing Your Information',
      'sharing_your_information_details':
          '''We do not sell your personal information. However, we may share your data:
* With authorized third-party service providers assisting in providing our services.
* With regulatory authorities, if required by law or for compliance purposes.
* To prevent fraud or ensure security.''',
      'data_security': '4 - Data Security',
      'data_security_details':
          '''We implement robust security measures to protect your data.
However, no system is 100% secure, and we cannot guarantee absolute security.''',
      'your_rights': '5 - Your Rights',
      'your_rights_details': '''You may:
* Request access to your personal data.
* Request deletion or correction of your information.
* Withdraw consent for data collection (may limit app functionality).''',
      'updates_to_policy': '6 - Updates to This Policy',
      'updates_to_policy_details':
          '''We may update this Privacy Policy from time to time. Any changes will be posted within the app, and your continued use constitutes acceptance of the revised policy.''',
      'agree_privacy_policy': 'I have read and agree to the Privacy Policy',
      'accept': 'ACCEPT',
      "terms_and_conditions": "Terms and Conditions",
      "intro_text":
          "These Terms and Conditions govern your use of the mobile application, operated by Innovitegra Solutions Private Limited (\"we,\" \"our,\" or \"us\"). By accessing or using our apps, you agree to these terms.",
      "use_of_service_title": "1 - Use of the Service",
      "use_of_service_requirements": "You must:",
      "use_of_service_details":
          "By using our apps, you confirm that you have read, understood, and agree to be bound by these Terms and Conditions. If you do not agree to these terms, please do not use our apps.",
      "user_responsibilities_title": "2 - User Responsibilities",
      "user_responsibilities_requirements": "You agree not to:",
      "user_responsibilities_details":
          "* Share your login credentials or account information with others.\n* Use the app for fraudulent, harmful, or unauthorized purposes.\n* Upload offensive or illegal content.",
      "collection_and_use_title": "3 - Collection and Use of Information",
      "collection_and_use_details":
          "By using the app, you consent to the collection, storage, and use of information as described in our Privacy Policy. This includes the use of:\n* Camera: To capture ID documents and selfies.\n* Location: To verify your address or for other security purposes.\n* Contacts: To provide certain app features (e.g., sending requests).",
      "intellectual_property_title": "4 - Intellectual Property",
      "intellectual_property_details":
          "All intellectual property rights, including trademarks, logos, and software, are owned by Innovitegra Solutions Private Limited. Unauthorized use is strictly prohibited.",
      "limitation_of_liability_title": "5 - Limitation of Liability",
      "limitation_of_liability_details":
          "We are not liable for:\n* Any loss resulting from unauthorized access to your account.\n* Any interruption or unavailability of the app.\n* Any errors or inaccuracies in information provided by users.",
      "welcome": "Welcome",
      "send_otp": "Send OTP",
      "already_have_account": "Already have an account?",
      "+1": "+1",
      "+44": "+44",
      "+91": "+91",
      "united_states": "🇺🇸 - (+1) United States",
      "united_kingdom": "🇬🇧 - (+44) United Kingdom",
      "india": "🇮🇳 - (+91) India",
      "doesnt_have_account": "Don't have an account?",
      "welcome_back": "Welcome back",
      "ok": "OK",
      "personal_details": "Personal Details",
      "personal_details_description":
          "Please fill in the following personal details",
      "gender": "Gender",
      "marital_status": "Marital Status",
      "religion": "Religion",
      "category": "Category",
      "disability": "Disability",
      "qualification": "Qualification",
      "nationality": "Nationality",
      "next": "NEXT",
      "identity_details": "Identity Details",
      "identity_details_description":
          "Please fill in the following identity details",
      "first_name": "First Name",
      "middle_name": "Middle Name",
      "last_name": "Last Name",
      "date_of_birth": "Date of Birth",
      "id_number": "Id Number (FCN)",
      "id_number_fin": "Id Number (FIN)",
      "date_of_issue": "Date of Issue",
      "date_of_expiry": "Date of Expiry",
      "please_fill_in_all_required_fields":
          "Please fill in all required fields",
      "please_enter_a_valid_date_of_birth_in_dd_mm_yyyy_format":
          "Please enter a valid date of birth in DD-MM-YYYY format",
      "date_of_birth_must_be_in_the_past": "Date of birth must be in the past",
      "please_enter_a_valid_date_of_issue_in_dd_mm_yyyy_format":
          "Please enter a valid date of issue in DD-MM-YYYY format",
      "date_of_expiry_must_be_in_the_future":
          "Date of expiry must be in the future",
      "pan_number": "PAN Number",
      "net_worth": "Net Worth",
      "annual_income": "Annual Income",
      "income_details": "Income Details",
      "please_enter_your_income_details": "Please enter your income details",
      "source_of_fund": "Source of Fund",
      "occupation": "Occupation Details",
      "employer": "Employer",
      "employment_status": "Employment Status",
      "employee_id": "Employee ID",
      "place_of_posting": "Place of Posting",
      "salary_range": "Salary Range",
      "please_fill_in_the_following_details_to_continue":
          "Please fill in the following details to continue",
      "please_select_occupation": "Please select occupation",
      "get_ready_for_ekyc": "Get Ready for eKYC",
      "ensure_your_phone_s_camera_is_functional":
          "Ensure your phone’s camera is functional.",
      "have_your_government_issued_id_ready":
          "Have your government-issued ID ready.",
      "make_sure_you_are_in_a_well_lit_environment":
          "Make sure you are in a well-lit environment.",
      "be_prepared_to_take_a_selfie_for_identity_verification":
          "Be prepared to take a selfie for identity verification.",
      "keep_your_internet_connection_stable":
          "Keep your internet connection stable.",
      "upload_id": "Upload ID",
      "please_upload_both_sides_of_your_id_card_to_continue":
          "Please upload both sides of your ID card to continue",
      "capture_front_of_id": "Capture Front of ID",
      "capture_back_of_id": "Capture Back of ID",
      "extracted_details": "Extracted Details",
      "full_name": "Full Name",
      "sex": "Sex",
      "country_of_citizenship": "Country of Citizenship",
      "fcn": "FCN",
      "continue": "Continue",
      "fin": "FIN",
      "phone_number": "Phone Number",
      "region": "Region",
      "zone": "Zone",
      "woreda": "Woreda",
      "please_blink_your_eyes": "Please blink your eyes",
      "position_your_face_in_the_frame": "Position your face in the frame",
      "now_turn_your_head_to_the_left": "Now turn your head to the left",
      "turn_your_head_to_the_right": "Turn your head to the right",
      "please_ensure_your_face_is_visible_and_well_lit_the_camera_will_take_a_selfie_and_compare_it_with_the_image_on_your_id_if_the_images_match_you_will_be_redirected_to_the_next_step":
          "Please ensure your face is visible and well-lit. The camera will take a selfie and compare it with the image on your ID. If the images match, you will be redirected to the next step.",
      "face_not_matching": "Face Not Matching",
      "face_is_not_matching_with_the_image_on_your_id_please_try_again_or_continue_with_the_manual_verification_process":
          "Face is not matching with the image on your ID. Please try again or continue with the manual verification process.",
      "face_matching": "Face Matching",
      "e_kyc_verified": "eKYC Verified",
      "your_e_kyc_verification_is_complete_you_can_now_proceed_to_the_next_step":
          "Your eKYC verification is complete. You can now proceed to the next step.",
      "id_card": "Id Card",
      "face_matching_status": "Face Matching Status",
      "extract_datas": "Extract Datas",
      "customer_type": "Customer Type",
      "select_the_customer_type_according_to_the_account_you_want_to_open":
          "Select the Customer type according to the account you want to open",
      "these_terms_and_conditions_govern_your_use_of_the_mobile_application_operated_by_innovitegra_solutions_private_limited_we_our_or_us_by_accessing_or_using_our_apps_you_agree_to_these_terms":
          "These terms and conditions govern your use of the mobile application operated by Innovitegra Solutions Private Limited (we, our or us) by accessing or using our apps you agree to these terms",
      "use_of_the_service": "Use of the Service",
      "you_must": "You must",
      "by_using_our_apps_you_confirm_that_you_have_read_understood_and_agree_to_be_bound_by_these_terms_and_conditions_if_you_do_not_agree_to_these_terms_please_do_not_use_our_apps":
          "By using our apps, you confirm that you have read, understood, and agree to be bound by these Terms and Conditions. If you do not agree to these terms, please do not use our apps.",
      "user_responsibilities": "User Responsibilities",
      "you_agree_not_to": "You agree not to",
      "share_your_login_credentials_or_account_information_with_others":
          "* Share your login credentials or account information with others.",
      "use_the_app_for_fraudulent_harmful_or_unauthorized_purposes":
          "* Use the app for fraudulent, harmful, or unauthorized purposes.",
      "upload_offensive_or_illegal": "* Upload offensive or illegal",
      "collection_and_use_of_information": "Collection and Use of Information",
      "intellectual_property": "Intellectual Property",
      "limitation_of_liability": "Limitation of Liability",
      "we_are_not_liable_for": "We are not liable for",
      "any_loss_resulting_from_unauthorized_access_to_your_account_any_interruption_or_unavailability_of_the_app_any_errors_or_inaccuracies_in_information_provided_by_users":
          '''* Any loss resulting from unauthorized access to your account.
* Any interruption or unavailability of the app.
* Any errors or inaccuracies in information provided by users.''',
      "by_using_the_app_you_consent_to_the_collection_storage_and_use_of_information_as_described_in_our_privacy_policy_this_includes_the_use_of_camera_to_capture_id_documents_and_selfies_location_to_verify_your_address_or_for_other_security_contacts_to_provide_certain_app_features_e_g_sending_requests":
          "By using the app, you consent to the collection, storage and use of information as described in our Privacy Policy. This includes the use of :\n* Camera : For capturing identity documents and selfies.\n* Location : For verifying your address or for other security contacts to provide certain app features (e.g. : sending requests).",
      "all_intellectual_property_rights_including_trademarks_logos_and_software_are_owned_by_innovitegra_solutions_private_limited_unauthorized_use_is_strictly_prohibited":
          "All intellectual property rights, including trademarks, logos and software, are owned by Innovitegra Solutions Private Limited. Unauthorized use is strictly prohibited.",
      "please_accept_the_terms_and_conditions_to_continue":
          "Please accept the Terms and Conditions to continue",
      "i_have_read_and_agree_to_the_terms_and_conditions":
          "I have read and agree to the Terms and Conditions",
      "add_address": "Add Address",
      "fill_in_the_address_details_below":
          "Select the address type and fill in the address details as required",
      "building_house_number": "Building / House Number",
      "address_line_1": "Address Line 1",
      "address_line_2": "Address Line 2",
      "pin_code": "PIN Code",
      "country": "Country",
      "save": "Save",
      "fill_the_address_details": "Fill the Address Details",
      "please_fill_all_the_required_fields_for_the_address_details":
          "Please fill all the required fields for the address details. The address details should be the same as the address proof document.",
      "address_proof": "Address Proof",
      "please_select_the_type_of_address_proof":
          "Please select the type of address proof",
      "address_id_proof_number": "Address ID Proof Number",
      "address_proof_id": "Address Proof ID",
      "take_photo": "Take Photo",
      "choose_from_gallery": "Choose from Gallery",
      "upload_address_proof_id": "Upload Address Proof ID",
      "please_select_a_address_proof_id_type":
          "Please select a address proof ID type",
      "please_enter_id_proof_number": "Please enter ID proof number",
      "please_upload_a_address_proof_id": "Please upload a address proof ID",
      "please_select_a_pep_type": "Please select a PEP type",
      "please_select_a_pep_relation": "Please select a PEP relation",
      "please_enter_pep_position": "Please enter PEP position",
      "please_enter_nationality": "Please enter nationality",
      "are_you_a_person_who_is_exposed_politics":
          "Are you a person who is exposed politics?",
      "policy_of_exposed_person": "Politically Exposed Person?",
      "pep_type": "PEP Type",
      "pep_relation": "PEP Relation",
      "pep_position": "PEP Position",
      "set_passcode": "SET PASSCODE",
      "this_passcode_will_be_used_to_access_your_account_please_enter_a_secure_and_memorable_passcode":
          "This passcode will be used to access your account. Please enter a secure and memorable passcode.",
      "enter_passcode": "Enter Passcode",
      "confirm_passcode": "Confirm Passcode",
      "passcode_must_be_6_digits": "Passcode Must be 6 digits",
      "passcode_must_be_numeric": "Passcode Must be Numeric",
      "passcode_must_not_be_a_commonly_used_password":
          "Passcode Must not be a commonly used password",
      "passcodes_do_not_match": "Passcodes do not match",
      "please_enter_and_confirm_the_6_digit_passcode":
          "Please enter and confirm the 6 digit passcode",
      "completed_registration": "Completed Registration",
      "your_registration_has_been_completed_successfully":
          "Your registration has been completed successfully",
      "thank_you_for_choosing_epurse": "Thank you for choosing ePurse",
      "explore": "Explore",
      "server_unavailable": "Server Unavailable",
      "please_try_again_later": "Please try again later.",
      "total_balance": "Total Balance",
      "view_more": "View More..",
      "fashion": "Fashion",
      "grocery": "Grocery",
      "travel": "Travel",
      "food": "Food",
      "others": "Others",
      "payments": "Payments",
      "top_up": "Top Up",
      "banking": "Banking",
      "manage_card": "Manage Card",
      "other_services": "Other Services",
      "mobile_recharge": "Mobile Recharge",
      "pay_bills": "Pay Bills",
      "pay_tax": "Pay Tax",
      "atm_locator": "ATM Locator",
      "see_all": "See All",
      "child_services": "Child Services",
      "child_cards": "Child Cards",
      "child_accounts": "Child Accounts",
      "top_up_child": "Top-Up Child",
      "child_transactions": "Child Transactions",
    },
    'fa': {
      'app_title': 'نمایش اعلان‌ها',
      'send_test_notification': 'ارسال اعلان آزمایشی',
      'sending_notification': 'در حال ارسال اعلان آزمایشی...',
      'epurse': 'کیف پول الکترونیکی',
      'e_wallet_at_your_fingertips': 'کیف پول الکترونیکی در دستان شما',
      'register': 'ثبت نام',
      'enter_mobile': 'شماره موبایل را وارد کنید',
      'enter_otp': 'کد یکبار مصرف را وارد کنید',
      'enter_name': 'نام را وارد کنید',
      'login': 'ورود',
      'english': 'English',
      'farsi': 'فارسی',
      'arabic': 'العربية',
      'french': 'Français',
      'privacy_policy': 'سیاست حفظ حریم خصوصی',
      'effective_date': 'تاریخ اجرایی: 1 نوامبر 2024',
      'privacy_policy_intro':
          '''Innovitegra Solutions Private Limited ("ما"، "شرکت"، "ما") متعهد به حفظ حریم خصوصی شما است. این سیاست حفظ حریم خصوصی توضیح می‌دهد که چگونه اطلاعات شما هنگام استفاده از برنامه‌های موبایل ما ("برنامه‌ها") و سایر خدمات مرتبط جمع‌آوری، استفاده، افشا و محافظت می‌شود. با استفاده از برنامه‌های ما، شما با جمع‌آوری و استفاده از اطلاعات خود مطابق با این سیاست حفظ حریم خصوصی موافقت می‌کنید.''',
      'information_we_collect': '١ - اطلاعاتی که ما جمع‌آوری می‌کنیم',
      'personal_information': '١.١ - اطلاعات شخصی',
      'personal_information_details': '''* نام کامل
* تاریخ تولد
* اطلاعات تماس (ایمیل، شماره تلفن)
* سایر اطلاعات شخصی مانند آدرس، حقوق و غیره.
* جزئیات کارت ملی، گذرنامه یا گواهینامه رانندگی
* عکس‌های سلفی برای تأیید هویت (eKYC)''',
      'device_information': '١.٢ - اطلاعات دستگاه',
      'device_information_details':
          '''* داده‌های مکانی: برای تأیید موقعیت مکانی شما به منظور امنیت و شخصی‌سازی خدمات.
* دسترسی به دوربین: برای گرفتن عکس از مدارک و سلفی در هنگام ثبت‌نام.
* فضای ذخیره‌سازی: برای ذخیره یا بازیابی موقت تصاویر/مدارک آپلود شده.
* مخاطبین (در صورت مجاز بودن): برای ویژگی‌هایی مانند ارسال درخواست پرداخت یا دعوت‌ها.''',
      'how_we_use_your_information': '٢ - نحوه استفاده ما از اطلاعات شما',
      'how_we_use_your_information_details':
          '''* برای تأیید و احراز هویت شما (eKYC).
* برای ارائه، شخصی‌سازی و بهبود خدمات ما.
* برای رعایت الزامات قانونی و مقرراتی.
* برای ارتباط با شما در مورد به‌روزرسانی‌ها، تبلیغات یا اعلان‌های خدمات.''',
      'sharing_your_information': '٣ - اشتراک‌گذاری اطلاعات شما',
      'sharing_your_information_details':
          '''ما اطلاعات شخصی شما را نمی‌فروشیم. اما ممکن است اطلاعات شما را به اشتراک بگذاریم:
* با ارائه‌دهندگان خدمات مجاز که در ارائه خدمات ما کمک می‌کنند.
* با مقامات قانونی در صورت نیاز قانونی یا برای اهداف انطباق.
* برای جلوگیری از کلاهبرداری یا تأمین امنیت.''',
      'data_security': '٤ - امنیت داده‌ها',
      'data_security_details':
          '''ما اقدامات امنیتی قوی برای محافظت از داده‌های شما اجرا می‌کنیم.
با این حال، هیچ سیستمی 100٪ ایمن نیست و نمی‌توانیم امنیت مطلق را تضمین کنیم.''',
      'your_rights': '٥ - حقوق شما',
      'your_rights_details': '''شما می‌توانید:
* درخواست دسترسی به اطلاعات شخصی خود را بدهید.
* درخواست حذف یا اصلاح اطلاعات خود را بدهید.
* رضایت خود را برای جمع‌آوری داده‌ها لغو کنید (ممکن است عملکرد برنامه محدود شود).''',
      'updates_to_policy': '٦ - به‌روزرسانی‌های این سیاست',
      'updates_to_policy_details':
          '''ما ممکن است این سیاست حفظ حریم خصوصی را هر از گاهی به‌روزرسانی کنیم. هرگونه تغییر در داخل برنامه منتشر خواهد شد و ادامه استفاده شما به معنی پذیرش سیاست اصلاح شده خواهد بود.''',
      'agree_privacy_policy':
          'من سیاست حفظ حریم خصوصی را خوانده‌ام و با آن موافقم',
      'accept': 'پذیرش',
      "welcome": "خوش آمدید",
      "send_otp": "ارسال OTP",
      "already_have_account": "حساب کاربری داری؟",
      "+1": "١+",
      "+44": "٤٤+",
      "+91": "٩١+",
      "united_states": "🇺🇸 - (١+) ایالات متحده",
      "united_kingdom": "🇬🇧 - (٤٤+) انگلیس",
      "india": "🇮🇳 - (٩١+) هند",
      "doesnt_have_account": "حساب کاربری نداری؟",
      "welcome_back": "خوش آمدید",
      "ok": "موافق",
      "personal_details": "جزئیات شخصی",
      "personal_details_description": "لطفاً پر کرده اید",
      "gender": "جنسیت",
      "marital_status": "الحالة الاجتماعية",
      "religion": "دین",
      "category": "دسته بندی",
      "disability": "معلولیت",
      "qualification": "وړتیا",
      "nationality": "جنسية",
      "next": "بل",
      "identity_details": "تفاصيل الهوية",
      "identity_details_description": "يرجى ملء التفاصيل التالية",
      "first_name": "الاسم الاول",
      "middle_name": "الاسم الاوسط",
      "last_name": "الاسم الاخير",
      "date_of_birth": "تاريخ الميلاد",
      "id_number": "رقم الهوية (FCN)",
      "id_number_fin": "رقم الهوية (FIN)",
      "date_of_issue": "تاريخ الصدور",
      "date_of_expiry": "تاريخ الانتهاء",
      "please_fill_in_all_required_fields": "يرجى ملء جميع الحقول المطلوبة",
      "please_enter_a_valid_date_of_birth_in_dd_mm_yyyy_format":
          "يرجى إدخال تاريخ الميلاد بتنسيق DD-MM-YYYY",
      "date_of_birth_must_be_in_the_past":
          "يجب أن يكون تاريخ الميلاد في الماضي",
      "please_enter_a_valid_date_of_issue_in_dd_mm_yyyy_format":
          "يرجى إدخال تاريخ الصدور بتنسيق DD-MM-YYYY",
      "date_of_expiry_must_be_in_the_future":
          "يجب أن يكون تاريخ الانتهاء في المستقبل",
      "pan_number": "رقم البنك",
      "net_worth": "الثروة الشخصية",
      "annual_income": "الدخل السنوي",
      "income_details": "تفاصيل الدخل",
      "please_enter_your_income_details": "يرجى إدخال تفاصيل دخلك",
      "source_of_fund": "مصدر الأموال",
      "occupation": "المهنة",
      "employer": "المستأجر",
      "employment_status": "حالة التوظيف",
      "employee_id": "رقم الموظف",
      "place_of_posting": "مكان التوظيف",
      "salary_range": "مدى الراتب",
      "please_select_occupation": "يرجى تحديد المهنة",
      "please_select_source_of_fund": "يرجى تحديد مصدر الأموال",
      "get_ready_for_ekyc": "احصل على الإعدادات المناسبة للتحقق الإلكتروني",
      "ensure_your_phone_s_camera_is_functional":
          "تأكد أن عدسة الكاميرا في الهاتف عملية",
      "have_your_government_issued_id_ready": "قم بتحضير الهوية الوطنية",
      "make_sure_you_are_in_a_well_lit_environment":
          "تأكد أنك في بيئة مناسبة للتصوير",
      "be_prepared_to_take_a_selfie_for_identity_verification":
          "كن مستعدًا لإختيار صورة ذاتية للتحقق من الهوية",
      "keep_your_internet_connection_stable": "حافظ على اتصال الإنترنت المستقر",
      "upload_id": "رفع الهوية",
      "please_upload_both_sides_of_your_id_card_to_continue":
          "يرجى رفع كلا الجانبين من بطاقة الهوية",
      "capture_front_of_id": "التقاط الجانب الأمامي",
      "capture_back_of_id": "التقاط الجانب الخلفي",
      "extracted_details": "التفاصيل المستخرجة",
      "full_name": "الاسم الكامل",
      "sex": "الجنس",
      "country_of_citizenship": "الجنسية",
      "fcn": "FCN",
      "continue": "استمر",
      "fin": "FIN",
      "phone_number": "رقم الهاتف",
      "region": "المنطقة",
      "zone": "المنطقة",
      "woreda": "الوردة",
      "please_blink_your_eyes": "يرجى تغيير العينين",
      "position_your_face_in_the_frame": "ضع وجهك في الصورة",
      "now_turn_your_head_to_the_left": "الآن انتقل إلى اليسار",
      "turn_your_head_to_the_right": "انتقل إلى اليمين",
      "please_ensure_your_face_is_visible_and_well_lit_the_camera_will_take_a_selfie_and_compare_it_with_the_image_on_your_id_if_the_images_match_you_will_be_redirected_to_the_next_step":
          "يرجى التأكد من أن وجهك مرئي ومناسب للتصوير. سيأخذ الكاميرا صورة ذاتية ويقارنها بالصورة على بطاقة الهوية. إذا تطابقت الصور، سيتم توجيهك إلى الخطوة التالية.",
      "face_not_matching": "لا يتطابق الوجه",
      "face_is_not_matching_with_the_image_on_your_id_please_try_again_or_continue_with_the_manual_verification_process":
          "لا يتطابق الوجه مع الصورة على بطاقة الهوية. يرجى المحاولة مرة أخرى أو الاستمرار مع التحقق اليدوي.",
      "face_matching": "يتطابق الوجه",
      "taking_selfie_in": "يتم إختيار الصورة الذاتية",
      "e_kyc_verified": "تم التحقق من الهوية",
      "your_e_kyc_verification_is_complete_you_can_now_proceed_to_the_next_step":
          "تم التحقق من الهوية. يمكنك الآن المتابعة للخطوة التالية.",
      "id_card": "بطاقة الهوية",
      "face_matching_status": "حالة المطابقة",
      "extract_datas": "استخراج البيانات",
      "customer_type": "نوع العميل",
      "select_the_customer_type_according_to_the_account_you_want_to_open":
          "حدد نوع العميل وفقًا للحساب الذي تريد فتحه",
      "these_terms_and_conditions_govern_your_use_of_the_mobile_application_operated_by_innovitegra_solutions_private_limited_we_our_or_us_by_accessing_or_using_our_apps_you_agree_to_these_terms":
          "تنظيمات الشروط والأحكام تنظم استخدام التطبيق المحمول المقدم من Innovitegra Solutions Private Limited (نحن، شركتنا، لنا) من خلال الوصول أو استخدام تطبيقاتنا، فإنك توافق على هذه الشروط",
      "terms_and_conditions": "الشروط والأحكام",
      "use_of_the_service": "استخدام الخدمة",
      "you_must": "يجب عليك",
      "by_using_our_apps_you_confirm_that_you_have_read_understood_and_agree_to_be_bound_by_these_terms_and_conditions_if_you_do_not_agree_to_these_terms_please_do_not_use_our_apps":
          "باستخدام تطبيقاتنا، فإنك توافق على جمع معلوماتك واستخدامها وفقًا لسياسة الخصوصية هذه.",
      "user_responsibilities": "المسؤوليات المنصة",
      "you_agree_not_to": "لا توافق",
      "share_your_login_credentials_or_account_information_with_others":
          "* اشارك بيانات تسجيل الدخول أو الحساب مع الآخرين.",
      "use_the_app_for_fraudulent_harmful_or_unauthorized_purposes":
          "* استخدم التطبيق لغرض الاحتيال أو الضار أو المخالف.",
      "upload_offensive_or_illegal": "* رفع سيء أو غير قانوني",
      "collection_and_use_of_information": "جمع واستخدام المعلومات",
      "intellectual_property": "الملكية الفكرية",
      "limitation_of_liability": "المسؤولية المحدودة",
      "we_are_not_liable_for": "لا نحمل مسؤولية",
      "any_loss_resulting_from_unauthorized_access_to_your_account_any_interruption_or_unavailability_of_the_app_any_errors_or_inaccuracies_in_information_provided_by_users":
          '''* أي خسارة ناتجة عن عدم الوصول إلى حسابك.
* أي توقف أو عدم توفر التطبيق.
* أي أخطاء أو عدم دقة في المعلومات المقدمة بواسطة المستخدمين.''',
      "by_using_the_app_you_consent_to_the_collection_storage_and_use_of_information_as_described_in_our_privacy_policy_this_includes_the_use_of_camera_to_capture_id_documents_and_selfies_location_to_verify_your_address_or_for_other_security_contacts_to_provide_certain_app_features_e_g_sending_requests":
          "باستخدام التطبيق، فإنك توافق على جمع وتخزين واستخدام المعلومات كما هو موضح في سياسة الخصوصية هذه، وهذا يشمل استخدام الكاميرا لتصوير الوثائق والصور الذاتية والموقع للتحقق من عنوانك أو لأغراض أخرى للأمان والاتصالات لتقديم بعض ميزات التطبيق (على سبيل المثال: إرسال الطلبات).",
      "all_intellectual_property_rights_including_trademarks_logos_and_software_are_owned_by_innovitegra_solutions_private_limited_unauthorized_use_is_strictly_prohibited":
          "جميع الحقوق الفكرية، بما في ذلك العلامات التجارية، الشعارات والبرامج الحاسوبية، ملكية لشركة Innovitegra Solutions Private Limited. يحظر استخدام غير مرخص.",
      "please_accept_the_terms_and_conditions_to_continue":
          "يرجى الموافقة على الشروط والأحكام للمتابعة",
      "i_have_read_and_agree_to_the_terms_and_conditions":
          "لقد قرأت ووافقت على الشروط والأحكام",
      "add_address": "إضافة عنوان",
      "fill_in_the_address_details_below": "أدخل تفاصيل العنوان أدناه",
      "building_house_number": "رقم المبنى / المنزل",
      "address_line_1": "السطر الأول من العنوان",
      "address_line_2": "السطر الثاني من العنوان",
      "pin_code": "رمز البريد",
      "country": "الدولة",
      "save": "حفظ",
      "address_proof": "البرهان العنواني",
      "please_select_the_type_of_address_proof":
          "يرجى تحديد نوع البرهان العنواني",
      "address_id_proof_number": "رقم البرهان العنواني",
      "address_proof_id": "البرهان العنواني",
      "address_proof_id_number": "رقم البرهان العنواني",
      "fill_the_address_details": "أدخل تفاصيل العنوان أدناه",
      "please_fill_all_the_required_fields_for_the_address_details":
          "يرجى ملء جميع الحقول المطلوبة بالعنوان التالي. يجب أن يكون العنوان المطلوب مطابقًا للبرهان العنواني المحدد.",
      "take_photo": "التقط صورة",
      "choose_from_gallery": "اختر من المعرض",
      "upload_address_proof_id": "رفع البرهان العنواني",
      "please_select_a_address_proof_id_type":
          "يرجى تحديد نوع البرهان العنواني",
      "please_enter_id_proof_number": "يرجى إدخال رقم البرهان العنواني",
      "please_upload_a_address_proof_id": "يرجى رفع البرهان العنواني",
      "please_select_a_pep_type": "يرجى تحديد نوع البرهان العنواني",
      "please_select_a_pep_relation": "يرجى تحديد نوع البرهان العنواني",
      "please_enter_pep_position": "يرجى إدخال نوع البرهان العنواني",
      "please_enter_nationality": "يرجى إدخال نوع البرهان العنواني",
      "are_you_a_person_who_is_exposed_politics":
          "هل أنت شخص يعرض على السياسة؟",
      "policy_of_exposed_person": "سياسة الشخص المعروض للسياسة؟",
      "pep_type": "نوع الشخص المعروض للسياسة",
      "pep_relation": "علاقة الشخص المعروض للسياسة",
      "pep_position": "موقع الشخص المعروض للسياسة",
      "set_passcode": "تعيين كلمة المرور",
      "this_passcode_will_be_used_to_access_your_account_please_enter_a_secure_and_memorable_passcode":
          "سيتم استخدام كلمة المرور للوصول إلى حسابك. يرجى إدخال كلمة مرور آمنة ومذكرة.",
      "enter_passcode": "أدخل كلمة المرور",
      "confirm_passcode": "تأكيد كلمة المرور",
      "passcode_must_be_6_digits": "كلمة المرور يجب أن تكون 6 أرقام",
      "passcode_must_be_numeric": "كلمة المرور يجب أن تكون أرقام",
      "passcode_must_not_be_a_commonly_used_password":
          "كلمة المرور يجب أن لا تكون مستخدمة على نطاق واسع",
      "passcodes_do_not_match": "كلمة المرور لا تطابق",
      "please_enter_and_confirm_the_6_digit_passcode":
          "يرجى إدخال وتأكيد كلمة المرور 6 أرقام",
      "completed_registration": "تسجيل الانتهاء",
      "your_registration_has_been_completed_successfully":
          "تم إكمال تسجيل الحساب الخاص بك بنجاح",
      "thank_you_for_choosing_epurse": "شكرا لك على اختيار ePurse",
      "explore": "استكشف",
      "server_unavailable": "سرور شتون نلري",
      "please_try_again_later": "يرجى المحاولة مرة أخرى لاحقا",
      "total_balance": "إجمالي المتوفر",
      "view_more": "عرض المزيد..",
      "fashion": "مود",
      "grocery": "مأكولات",
      "travel": "سفر",
      "food": "طعام",
      "others": "أخرى",
      "payments": "دفع",
      "top_up": "تحويل",
      "banking": "بنك",
      "manage_card": "إدارة البطاقة",
      "other_services": "خدمات أخرى",
      "mobile_recharge": "شحن الموبايل",
      "pay_bills": "دفع الفواتير",
      "pay_tax": "دفع الضرائب",
      "atm_locator": "موقع الآلات النقدية",
      "see_all": "عرض الكل",
      "child_services": "خدمات الأطفال",
      "child_cards": "بطاقات الأطفال",
      "child_accounts": "حسابات الأطفال",
      "top_up_child": "تحويل الأطفال",
      "child_transactions": "معاملات الأطفال",
    },
    'ar': {
      'app_title': 'عرض الإشعارات',
      'send_test_notification': 'إرسال إشعار تجريبي',
      'sending_notification': 'جاري إرسال إشعار تجريبي...',
      'epurse': 'المحفظة الإلكترونية',
      'e_wallet_at_your_fingertips': 'المحفظة الإلكترونية بين يديك',
      'register': 'تسجيل',
      'enter_mobile': 'أدخل رقم الهاتف',
      'enter_otp': 'أدخل رمز التحقق',
      'enter_name': 'أدخل الاسم',
      'login': 'تسجيل الدخول',
      'english': 'English',
      'farsi': 'فارسی',
      'arabic': 'العربية',
      'french': 'Français',
      'privacy_policy': 'سياسة الخصوصية',
      'effective_date': 'تاريخ السريان: 1 نوفمبر 2024',
      'privacy_policy_intro':
          '''Innovitegra Solutions Private Limited ("نحن"، "شركتنا"، "لنا") ملتزمة بحماية خصوصيتك. توضح سياسة الخصوصية هذه كيفية جمع معلوماتك واستخدامها والإفصاح عنها وحمايتها عند استخدام تطبيقات الهاتف المحمول الخاصة بنا ("التطبيقات") والخدمات الأخرى ذات الصلة. باستخدام تطبيقاتنا، فإنك توافق على جمع معلوماتك واستخدامها وفقًا لسياسة الخصوصية هذه.''',
      'information_we_collect': '١ - المعلومات التي نجمعها',
      'personal_information': '١.١ - المعلومات الشخصية',
      'personal_information_details': '''* الاسم الكامل
* تاريخ الميلاد
* بيانات الاتصال (البريد الإلكتروني، رقم الهاتف)
* معلومات شخصية أخرى مثل العنوان، الراتب، إلخ.
* تفاصيل الهوية الوطنية، جواز السفر أو رخصة القيادة
* صور سيلفي للتحقق من الهوية (eKYC)''',
      'device_information': '١.٢ - معلومات الجهاز',
      'device_information_details':
          '''* بيانات الموقع: للتحقق من موقعك لأغراض الأمان وتخصيص الخدمات.
* الوصول إلى الكاميرا: لالتقاط صور للمستندات والصور الذاتية أثناء عملية التسجيل.
* التخزين: لتخزين أو استرجاع الصور/المستندات المرفوعة مؤقتًا.
* جهات الاتصال (إذا تم السماح بذلك): لتمكين ميزات مثل إرسال طلبات الدفع أو الدعوات.''',
      'how_we_use_your_information': '٢ - كيف نستخدم معلوماتك',
      'how_we_use_your_information_details':
          '''* للتحقق من هويتك والمصادقة عليها (eKYC).
* لتقديم خدماتنا وتخصيصها وتحسينها.
* للامتثال للمتطلبات القانونية والتنظيمية.
* للتواصل معك بخصوص التحديثات أو العروض الترويجية أو إشعارات الخدمة.''',
      'sharing_your_information': '٣ - مشاركة معلوماتك',
      'sharing_your_information_details':
          '''نحن لا نبيع معلوماتك الشخصية، ولكن قد نشارك بياناتك:
* مع مزودي الخدمات الخارجيين المصرح لهم والذين يساعدون في تقديم خدماتنا.
* مع الجهات التنظيمية إذا كان ذلك مطلوبًا بموجب القانون أو لأغراض الامتثال.
* لمنع الاحتيال أو ضمان الأمان.''',
      'data_security': '٤ - أمان البيانات',
      'data_security_details': '''نحن ننفذ تدابير أمنية قوية لحماية بياناتك.
ومع ذلك، لا يوجد نظام آمن بنسبة 100٪، ولا يمكننا ضمان الأمان المطلق.''',
      'your_rights': '٥ - حقوقك',
      'your_rights_details': '''يمكنك:
* طلب الوصول إلى بياناتك الشخصية.
* طلب حذف أو تصحيح معلوماتك.
* سحب الموافقة على جمع البيانات (قد يحد من وظائف التطبيق).''',
      'updates_to_policy': '٦ - تحديثات على هذه السياسة',
      'updates_to_policy_details':
          '''قد نقوم بتحديث سياسة الخصوصية هذه من وقت لآخر. سيتم نشر أي تغييرات داخل التطبيق، واستمرار استخدامك يعني قبول السياسة المعدلة.''',
      'agree_privacy_policy': 'لقد قرأت ووافقت على سياسة الخصوصية',
      'accept': 'قبول',
      "welcome": "مرحبا",
      "send_otp": "إرسال OTP",
      "already_have_account": "حساب كاربری داری؟",
      "+1": "١+",
      "+44": "٤٤+",
      "+91": "٩١+",
      "united_states": "🇺🇸 - (١+) الولايات المتحدة",
      "united_kingdom": "🇬🇧 - (٤٤+) المملكة المتحدة",
      "india": "🇮🇳 - (٩١+) الهند",
      "doesnt_have_account": "ليس لديك حساب؟",
      "welcome_back": "خوش آمدید",
      "ok": "موافق",
      "personal_details": "جزئیات شخصی",
      "personal_details_description": "لطفاً پر کرده اید",
      "gender": "جنسیت",
      "marital_status": "الحالة الاجتماعية",
      "religion": "دین",
      "category": "دسته بندی",
      "disability": "الإعاقة",
      "qualification": "مؤهل",
      "nationality": "ملیت",
      "next": "التالي",
      "identity_details": "تفاصيل الهوية",
      "identity_details_description": "يرجى ملء التفاصيل التالية",
      "first_name": "الاسم الاول",
      "middle_name": "الاسم الاوسط",
      "last_name": "الاسم الاخير",
      "date_of_birth": "تاريخ الميلاد",
      "id_number": "رقم الهوية (FCN)",
      "id_number_fin": "رقم الهوية (FIN)",
      "date_of_issue": "تاريخ الصدور",
      "date_of_expiry": "تاريخ الانتهاء",
      "please_fill_in_all_required_fields": "يرجى ملء جميع الحقول المطلوبة",
      "please_enter_a_valid_date_of_birth_in_dd_mm_yyyy_format":
          "يرجى إدخال تاريخ الميلاد بتنسيق DD-MM-YYYY",
      "date_of_birth_must_be_in_the_past":
          "يجب أن يكون تاريخ الميلاد في الماضي",
      "please_enter_a_valid_date_of_issue_in_dd_mm_yyyy_format":
          "يرجى إدخال تاريخ الصدور بتنسيق DD-MM-YYYY",
      "date_of_expiry_must_be_in_the_future":
          "يجب أن يكون تاريخ الانتهاء في المستقبل",
      "pan_number": "رقم البنك",
      "net_worth": "الثروة الشخصية",
      "annual_income": "الدخل السنوي",
      "income_details": "تفاصيل الدخل",
      "please_enter_your_income_details": "يرجى إدخال تفاصيل دخلك",
      "source_of_fund": "مصدر الأموال",
      "occupation": "المهنة",
      "employer": "المستأجر",
      "employment_status": "حالة التوظيف",
      "employee_id": "رقم الموظف",
      "place_of_posting": "مكان التوظيف",
      "salary_range": "مدى الراتب",
      "please_select_occupation": "يرجى تحديد المهنة",
      "please_select_source_of_fund": "يرجى تحديد مصدر الأموال",
      "get_ready_for_ekyc": "احصل على الإعدادات المناسبة للتحقق الإلكتروني",
      "ensure_your_phone_s_camera_is_functional":
          "تأكد أن عدسة الكاميرا في الهاتف عملية",
      "have_your_government_issued_id_ready": "قم بتحضير الهوية الوطنية",
      "make_sure_you_are_in_a_well_lit_environment":
          "تأكد أنك في بيئة مناسبة للتصوير",
      "be_prepared_to_take_a_selfie_for_identity_verification":
          "كن مستعدًا لإختيار صورة ذاتية للتحقق من الهوية",
      "keep_your_internet_connection_stable": "حافظ على اتصال الإنترنت المستقر",
      "upload_id": "رفع الهوية",
      "please_upload_both_sides_of_your_id_card_to_continue":
          "يرجى رفع كلا الجانبين من بطاقة الهوية",
      "capture_front_of_id": "التقاط الجانب الأمامي",
      "capture_back_of_id": "التقاط الجانب الخلفي",
      "extracted_details": "التفاصيل المستخرجة",
      "full_name": "الاسم الكامل",
      "sex": "الجنس",
      "country_of_citizenship": "الجنسية",
      "fcn": "FCN",
      "continue": "استمر",
      "fin": "FIN",
      "phone_number": "رقم الهاتف",
      "region": "المنطقة",
      "zone": "المنطقة",
      "woreda": "الوردة",
      "please_blink_your_eyes": "يرجى تغيير العينين",
      "position_your_face_in_the_frame": "ضع وجهك في الصورة",
      "now_turn_your_head_to_the_left": "الآن انتقل إلى اليسار",
      "turn_your_head_to_the_right": "انتقل إلى اليمين",
      "please_ensure_your_face_is_visible_and_well_lit_the_camera_will_take_a_selfie_and_compare_it_with_the_image_on_your_id_if_the_images_match_you_will_be_redirected_to_the_next_step":
          "يرجى التأكد من أن وجهك مرئي ومناسب للتصوير. سيأخذ الكاميرا صورة ذاتية ويقارنها بالصورة على بطاقة الهوية. إذا تطابقت الصور، سيتم توجيهك إلى الخطوة التالية.",
      "face_not_matching": "لا يتطابق الوجه",
      "face_is_not_matching_with_the_image_on_your_id_please_try_again_or_continue_with_the_manual_verification_process":
          "لا يتطابق الوجه مع الصورة على بطاقة الهوية. يرجى المحاولة مرة أخرى أو الاستمرار مع التحقق اليدوي.",
      "face_matching": "يتطابق الوجه",
      "taking_selfie_in": "يتم إختيار الصورة الذاتية",
      "e_kyc_verified": "eKYC Verified",
      "your_e_kyc_verification_is_complete_you_can_now_proceed_to_the_next_step":
          "Your eKYC verification is complete. You can now proceed to the next step.",
      "id_card": "Id Card",
      "face_matching_status": "Face Matching Status",
      "extract_datas": "Extract Datas",
      "customer_type": "Customer Type",
      "select_the_customer_type_according_to_the_account_you_want_to_open":
          "Select the Customer type according to the account you want to open",
      "these_terms_and_conditions_govern_your_use_of_the_mobile_application_operated_by_innovitegra_solutions_private_limited_we_our_or_us_by_accessing_or_using_our_apps_you_agree_to_these_terms":
          "تنظيمات الشروط والأحكام تنظم استخدام التطبيق المحمول المقدم من Innovitegra Solutions Private Limited (نحن، شركتنا، لنا) من خلال الوصول أو استخدام تطبيقاتنا، فإنك توافق على هذه الشروط",
      "terms_and_conditions": "الشروط والأحكام",
      "use_of_the_service": "استخدام الخدمة",
      "you_must": "يجب عليك",
      "by_using_our_apps_you_confirm_that_you_have_read_understood_and_agree_to_be_bound_by_these_terms_and_conditions_if_you_do_not_agree_to_these_terms_please_do_not_use_our_apps":
          "باستخدام تطبيقاتنا، فإنك توافق على جمع معلوماتك واستخدامها وفقًا لسياسة الخصوصية هذه.",
      "user_responsibilities": "المسؤوليات المنصة",
      "you_agree_not_to": "لا توافق",
      "share_your_login_credentials_or_account_information_with_others":
          "* اشارك بيانات تسجيل الدخول أو الحساب مع الآخرين.",
      "use_the_app_for_fraudulent_harmful_or_unauthorized_purposes":
          "* استخدم التطبيق لغرض الاحتيال أو الضار أو المخالف.",
      "upload_offensive_or_illegal": "* رفع سيء أو غير قانوني",
      "collection_and_use_of_information": "جمع واستخدام المعلومات",
      "intellectual_property": "الملكية الفكرية",
      "limitation_of_liability": "المسؤولية المحدودة",
      "we_are_not_liable_for": "لا نحمل مسؤولية",
      "any_loss_resulting_from_unauthorized_access_to_your_account_any_interruption_or_unavailability_of_the_app_any_errors_or_inaccuracies_in_information_provided_by_users":
          '''* أي خسارة ناتجة عن عدم الوصول إلى حسابك.
* أي توقف أو عدم توفر التطبيق.
* أي أخطاء أو عدم دقة في المعلومات المقدمة بواسطة المستخدمين.''',
      "by_using_the_app_you_consent_to_the_collection_storage_and_use_of_information_as_described_in_our_privacy_policy_this_includes_the_use_of_camera_to_capture_id_documents_and_selfies_location_to_verify_your_address_or_for_other_security_contacts_to_provide_certain_app_features_e_g_sending_requests":
          "باستخدام التطبيق، فإنك توافق على جمع وتخزين واستخدام المعلومات كما هو موضح في سياسة الخصوصية هذه، وهذا يشمل استخدام الكاميرا لتصوير الوثائق والصور الذاتية والموقع للتحقق من عنوانك أو لأغراض أخرى للأمان والاتصالات لتقديم بعض ميزات التطبيق (على سبيل المثال: إرسال الطلبات).",
      "all_intellectual_property_rights_including_trademarks_logos_and_software_are_owned_by_innovitegra_solutions_private_limited_unauthorized_use_is_strictly_prohibited":
          "جميع الحقوق الفكرية، بما في ذلك العلامات التجارية، الشعارات والبرامج الحاسوبية، ملكية لشركة Innovitegra Solutions Private Limited. يحظر استخدام غير مرخص.",
      "please_accept_the_terms_and_conditions_to_continue":
          "يرجى الموافقة على الشروط والأحكام للمتابعة",
      "i_have_read_and_agree_to_the_terms_and_conditions":
          "لقد قرأت ووافقت على الشروط والأحكام",
      "save": "حفظ",
      "add_address": "إضافة عنوان",
      "fill_in_the_address_details_below": "أدخل تفاصيل العنوان أدناه",
      "building_house_number": "رقم المبنى / المنزل",
      "address_line_1": "السطر الأول من العنوان",
      "address_line_2": "السطر الثاني من العنوان",
      "pin_code": "رمز البريد",
      "country": "الدولة",
      "address_proof": "البرهان العنواني",
      "please_select_the_type_of_address_proof":
          "يرجى تحديد نوع البرهان العنواني",
      "address_id_proof_number": "رقم البرهان العنواني",
      "address_proof_id": "البرهان العنواني",
      "address_proof_id_number": "رقم البرهان العنواني",
      "fill_the_address_details": "أدخل تفاصيل العنوان أدناه",
      "please_fill_all_the_required_fields_for_the_address_details":
          "يرجى ملء جميع الحقول المطلوبة بالعنوان التالي. يجب أن يكون العنوان المطلوب مطابقًا للبرهان العنواني المحدد.",
      "take_photo": "التقط صورة",
      "choose_from_gallery": "اختر من المعرض",
      "upload_address_proof_id": "رفع البرهان العنواني",
      "please_select_a_address_proof_id_type":
          "يرجى تحديد نوع البرهان العنواني",
      "please_enter_id_proof_number": "يرجى إدخال رقم البرهان العنواني",
      "please_upload_a_address_proof_id": "يرجى رفع البرهان العنواني",
      "please_select_a_pep_type": "يرجى تحديد نوع البرهان العنواني",
      "please_select_a_pep_relation": "يرجى تحديد نوع البرهان العنواني",
      "please_enter_pep_position": "يرجى إدخال نوع البرهان العنواني",
      "please_enter_nationality": "يرجى إدخال نوع البرهان العنواني",
      "set_passcode": "تعيين كلمة المرور",
      "this_passcode_will_be_used_to_access_your_account_please_enter_a_secure_and_memorable_passcode":
          "سيتم استخدام كلمة المرور للوصول إلى حسابك. يرجى إدخال كلمة مرور آمنة ومذكرة.",
      "enter_passcode": "أدخل كلمة المرور",
      "confirm_passcode": "تأكيد كلمة المرور",
      "passcode_must_be_6_digits": "كلمة المرور يجب أن تكون 6 أرقام",
      "passcode_must_be_numeric": "كلمة المرور يجب أن تكون أرقام",
      "passcode_must_not_be_a_commonly_used_password":
          "كلمة المرور يجب أن لا تكون مستخدمة على نطاق واسع",
      "passcodes_do_not_match": "كلمة المرور لا تطابق",
      "please_enter_and_confirm_the_6_digit_passcode":
          "يرجى إدخال وتأكيد كلمة المرور 6 أرقام",
      "completed_registration": "تسجيل الانتهاء",
      "your_registration_has_been_completed_successfully":
          "تم إكمال تسجيل الحساب الخاص بك بنجاح",
      "thank_you_for_choosing_epurse": "شكرا لك على اختيار ePurse",
      "explore": "استكشف",
      "server_unavailable": "سرور شتون نلري",
      "please_try_again_later": "يرجى المحاولة مرة أخرى لاحقا",
      "total_balance": "إجمالي المتوفر",
      "view_more": "عرض المزيد..",
      "fashion": "مود",
      "grocery": "مأكولات",
      "travel": "سفر",
      "food": "طعام",
      "others": "أخرى",
      "payments": "دفع",
      "top_up": "تحويل",
      "banking": "بنك",
      "manage_card": "إدارة البطاقة",
      "other_services": "خدمات أخرى",
      "mobile_recharge": "شحن الموبايل",
      "pay_bills": "دفع الفواتير",
      "pay_tax": "دفع الضرائب",
      "atm_locator": "موقع الآلات النقدية",
      "see_all": "عرض الكل",
      "child_services": "خدمات الأطفال",
      "child_cards": "بطاقات الأطفال",
      "child_accounts": "حسابات الأطفال",
      "top_up_child": "تحويل الأطفال",
      "child_transactions": "معاملات الأطفال",
    },
    'fr': {
      'app_title': 'Démo des notifications',
      'send_test_notification': 'Envoyer une notification test',
      'sending_notification': 'Envoi de la notification test...',
      'epurse': 'Portefeuille électronique',
      'e_wallet_at_your_fingertips':
          'Portefeuille électronique à portée de main',
      'register': "S'inscrire",
      'enter_mobile': 'Entrez le numéro de mobile',
      'enter_otp': 'Entrez le code OTP',
      'enter_name': 'Entrez le nom',
      'login': 'Connexion',
      'english': 'English',
      'farsi': 'فارسی',
      'arabic': 'العربية',
      'french': 'Français',
      'privacy_policy': 'Politique de confidentialité',
      'effective_date': 'Date d’effet : 1er novembre 2024',
      'privacy_policy_intro':
          '''Innovitegra Solutions Private Limited ("nous", "notre société", "nos") s’engage à protéger votre confidentialité. Cette politique de confidentialité explique comment nous collectons, utilisons, divulguons et protégeons vos informations lorsque vous utilisez nos applications mobiles ("Apps") et autres services connexes. En utilisant nos applications, vous acceptez la collecte et l’utilisation de vos informations conformément à cette politique de confidentialité.''',
      'information_we_collect': '1 - Informations que nous collectons',
      'personal_information': '1.1 - Informations personnelles',
      'personal_information_details': '''* Nom complet
* Date de naissance
* Coordonnées (email, numéro de téléphone)
* Autres informations personnelles comme l’adresse, le salaire, etc.
* Carte d’identité nationale, passeport ou permis de conduire
* Selfies ou photographies pour la vérification d’identité (eKYC)''',
      'device_information': '1.2 - Informations sur l’appareil',
      'device_information_details':
          '''* Données de localisation : pour vérifier votre position pour la sécurité et la personnalisation du service.
* Accès à l’appareil photo : pour capturer des images de documents et selfies lors de l’inscription.
* Stockage : pour stocker temporairement ou récupérer les images/documents téléchargés.
* Contacts (si autorisé) : pour activer des fonctionnalités comme l’envoi de demandes de paiement ou d’invitations.''',
      'how_we_use_your_information':
          '2 - Comment nous utilisons vos informations',
      'how_we_use_your_information_details':
          '''* Pour vérifier et authentifier votre identité (eKYC).
* Pour fournir, personnaliser et améliorer nos services.
* Pour se conformer aux exigences légales et réglementaires.
* Pour communiquer avec vous concernant les mises à jour, promotions ou notifications de service.''',
      'sharing_your_information': '3 - Partage de vos informations',
      'sharing_your_information_details':
          '''Nous ne vendons pas vos informations personnelles. Cependant, nous pouvons partager vos données :
* Avec des prestataires de services tiers autorisés nous aidant à fournir nos services.
* Avec les autorités réglementaires, si requis par la loi ou pour des raisons de conformité.
* Pour prévenir la fraude ou garantir la sécurité.''',
      'data_security': '4 - Sécurité des données',
      'data_security_details':
          '''Nous mettons en place des mesures de sécurité robustes pour protéger vos données.
Cependant, aucun système n'est sécurisé à 100 %, et nous ne pouvons garantir une sécurité absolue.''',
      'your_rights': '5 - Vos droits',
      'your_rights_details': '''Vous pouvez :
* Demander l'accès à vos données personnelles.
* Demander la suppression ou la correction de vos informations.
* Retirer votre consentement à la collecte des données (cela peut limiter les fonctionnalités de l'application).''',
      'updates_to_policy': '6 - Mises à jour de cette politique',
      'updates_to_policy_details':
          '''Nous pouvons mettre à jour cette politique de confidentialité de temps à autre. Toute modification sera publiée dans l'application, et votre utilisation continue constitue l'acceptation de la politique révisée.''',
      "terms_and_conditions": "Termes et Conditions",
      "intro_text":
          "Ces Termes et Conditions régissent votre utilisation de l'application mobile, exploitée par Innovitegra Solutions Private Limited (\"nous,\" \"notre\" ou \"nos\"). En accédant à nos applications ou en les utilisant, vous acceptez ces conditions.",
      "use_of_service_title": "1 - Utilisation du Service",
      "use_of_service_requirements": "Vous devez :",
      "use_of_service_details":
          "En utilisant nos applications, vous confirmez avoir lu, compris et accepté d'être lié par ces Termes et Conditions. Si vous n'acceptez pas ces conditions, veuillez ne pas utiliser nos applications.",
      "user_responsibilities_title": "2 - Responsabilités de l'utilisateur",
      "user_responsibilities_requirements": "Vous acceptez de ne pas :",
      "user_responsibilities_details":
          "* Partager vos identifiants de connexion ou informations de compte avec d'autres personnes.\n* Utiliser l'application à des fins frauduleuses, nuisibles ou non autorisées.\n* Télécharger du contenu offensant ou illégal.",
      "collection_and_use_title":
          "3 - Collecte et Utilisation des Informations",
      "collection_and_use_details":
          "En utilisant l'application, vous consentez à la collecte, au stockage et à l'utilisation des informations comme décrit dans notre Politique de Confidentialité. Cela inclut l'utilisation de :\n* Caméra : Pour capturer des documents d'identité et des selfies.\n* Localisation : Pour vérifier votre adresse ou pour d'autres raisons de sécurité.\n* Contacts : Pour fournir certaines fonctionnalités de l'application (ex. : envoi de demandes).",
      "intellectual_property_title": "4 - Propriété Intellectuelle",
      "intellectual_property_details":
          "Tous les droits de propriété intellectuelle, y compris les marques, logos et logiciels, sont détenus par Innovitegra Solutions Private Limited. Toute utilisation non autorisée est strictement interdite.",
      "limitation_of_liability_title": "5 - Limitation de Responsabilité",
      "limitation_of_liability_details":
          "Nous ne sommes pas responsables de :\n* Toute perte résultant d'un accès non autorisé à votre compte.\n* Toute interruption ou indisponibilité de l'application.\n* Toute erreur ou inexactitude dans les informations fournies par les utilisateurs.",
      "welcome": "Bienvenue",
      "send_otp": "Envoyer OTP",
      "already_have_account": "Vous avez déjà un compte ?",
      "+1": "+1",
      "+44": "+44",
      "+91": "+91",
      "united_states": "🇺🇸 - (+1) États-Unis",
      "united_kingdom": "🇬🇧 - (+44) Royaume-Uni",
      "india": "🇮🇳 - (+91) Inde",
      "doesnt_have_account": "Vous n'avez pas de compte ?",
      "welcome_back": "Bienvenue",
      "ok": "OK",
      "personal_details": "Détails personnels",
      "personal_details_description":
          "Veuillez remplir les informations suivantes",
      "gender": "Sexe",
      "marital_status": "Statut marital",
      "religion": "Religion",
      "category": "Catégorie",
      "disability": "Invalidité",
      "qualification": "Qualification",
      "nationality": "Nationalité",
      "next": "SUIVANT",
      "identity_details": "Détails de l'identité",
      "identity_details_description":
          "Veuillez remplir les informations suivantes",
      "first_name": "Prénom",
      "middle_name": "Nom de famille",
      "last_name": "Nom de famille",
      "date_of_birth": "Date de naissance",
      "id_number": "Numéro d'identité (FCN)",
      "id_number_fin": "Numéro d'identité (FIN)",
      "date_of_issue": "Date de délivrance",
      "date_of_expiry": "Date d'expiration",
      "please_fill_in_all_required_fields":
          "Veuillez remplir tous les champs requis",
      "please_enter_a_valid_date_of_birth_in_dd_mm_yyyy_format":
          "Veuillez entrer une date de naissance valide au format DD-MM-YYYY",
      "date_of_birth_must_be_in_the_past":
          "La date de naissance doit être dans le passé",
      "please_enter_a_valid_date_of_issue_in_dd_mm_yyyy_format":
          "Veuillez entrer une date de délivrance valide au format DD-MM-YYYY",
      "date_of_expiry_must_be_in_the_future":
          "La date d'expiration doit être dans le futur",
      "pan_number": "Numéro PAN",
      "net_worth": "Valeur nette",
      "annual_income": "Revenu annuel",
      "income_details": "Détails des revenus",
      "please_enter_your_income_details":
          "Veuillez entrer vos détails de revenus",
      "source_of_fund": "Source de fonds",
      "occupation": "Occupation",
      "employer": "Employeur",
      "employment_status": "Statut d'emploi",
      "employee_id": "ID de l'employé",
      "place_of_posting": "Lieu de poste",
      "salary_range": "Gamme de salaire",
      "please_select_occupation": "Veuillez sélectionner une occupation",
      "please_select_source_of_fund":
          "Veuillez sélectionner une source de fonds",
      "get_ready_for_ekyc": "Prêt pour eKYC",
      "ensure_your_phone_s_camera_is_functional":
          "Assurez-vous que la caméra de votre téléphone est fonctionnelle.",
      "have_your_government_issued_id_ready":
          "Prêt à présenter votre identité officielle.",
      "make_sure_you_are_in_a_well_lit_environment":
          "Assurez-vous que vous êtes dans un environnement bien éclairé.",
      "be_prepared_to_take_a_selfie_for_identity_verification":
          "Prêt à prendre une photo de vous-même pour la vérification d'identité.",
      "keep_your_internet_connection_stable":
          "Assurez-vous que votre connexion internet est stable.",
      "upload_id": "Télécharger l'identité",
      "please_upload_both_sides_of_your_id_card_to_continue":
          "Veuillez télécharger les deux côtés de votre carte d'identité",
      "capture_front_of_id": "Capturer le côté frontal",
      "capture_back_of_id": "Capturer le côté arrière",
      "extracted_details": "Détails extraits",
      "full_name": "Nom complet",
      "sex": "Sexe",
      "country_of_citizenship": "Nationalité",
      "fcn": "FCN",
      "continue": "Continuer",
      "fin": "FIN",
      "phone_number": "Numéro de téléphone",
      "region": "Région",
      "zone": "Zone",
      "woreda": "Woreda",
      "please_blink_your_eyes": "Veuillez cligner vos yeux",
      "position_your_face_in_the_frame":
          "Positionnez votre visage dans le cadre",
      "now_turn_your_head_to_the_left":
          "Maintenant, tournez votre tête à gauche",
      "turn_your_head_to_the_right": "Tournez votre tête à droite",
      "please_ensure_your_face_is_visible_and_well_lit_the_camera_will_take_a_selfie_and_compare_it_with_the_image_on_your_id_if_the_images_match_you_will_be_redirected_to_the_next_step":
          "Veuillez vous assurer que votre visage est visible et bien éclairé. La caméra prendra une photo de vous-même et la comparera à l'image sur votre carte d'identité. Si les images correspondent, vous serez redirigé vers la prochaine étape.",
      "face_not_matching": "Visage non correspondant",
      "face_is_not_matching_with_the_image_on_your_id_please_try_again_or_continue_with_the_manual_verification_process":
          "Le visage ne correspond pas à l'image sur votre carte d'identité. Veuillez réessayer ou continuer avec le processus de vérification manuelle.",
      "face_matching": "Visage correspondant",
      "taking_selfie_in": "Photo de vous-même en cours",
      "e_kyc_verified": "eKYC Vérifié",
      "your_e_kyc_verification_is_complete_you_can_now_proceed_to_the_next_step":
          "Votre vérification eKYC est terminée. Vous pouvez maintenant passer à la prochaine étape.",
      "id_card": "Carte d'identité",
      "face_matching_status": "Statut de correspondance faciale",
      "extract_datas": "Extraire les données",
      "customer_type": "Type de client",
      "select_the_customer_type_according_to_the_account_you_want_to_open":
          "Sélectionnez le type de client en fonction du compte que vous souhaitez ouvrir",
      "these_terms_and_conditions_govern_your_use_of_the_mobile_application_operated_by_innovitegra_solutions_private_limited_we_our_or_us_by_accessing_or_using_our_apps_you_agree_to_these_terms":
          "Ces conditions d'utilisation régissent votre utilisation de l'application mobile, exploitée par Innovitegra Solutions Private Limited (\"nous\", \"notre\" ou \"nos\"). En accédant à nos applications ou en les utilisant, vous acceptez ces conditions.",
      "use_of_the_service": "Utilisation du Service",
      "you_must": "Vous devez",
      "by_using_our_apps_you_confirm_that_you_have_read_understood_and_agree_to_be_bound_by_these_terms_and_conditions_if_you_do_not_agree_to_these_terms_please_do_not_use_our_apps":
          "En utilisant nos applications, vous confirmez avoir lu, compris et accepté d'être lié par ces Termes et Conditions. Si vous n'acceptez pas ces conditions, veuillez ne pas utiliser nos applications.",
      "user_responsibilities": "Responsabilités de l'utilisateur",
      "you_agree_not_to": "Vous acceptez de ne pas",
      "share_your_login_credentials_or_account_information_with_others":
          "* Partager vos identifiants de connexion ou informations de compte avec d'autres personnes.",
      "use_the_app_for_fraudulent_harmful_or_unauthorized_purposes":
          "* Utiliser l'application à des fins frauduleuses, nuisibles ou non autorisées.",
      "upload_offensive_or_illegal":
          "* Télécharger du contenu offensant ou illégal.",
      "collection_and_use_of_information":
          "Collecte et Utilisation des Informations",
      "intellectual_property": "Propriété Intellectuelle",
      "limitation_of_liability": "Limitation de Responsabilité",
      "we_are_not_liable_for": "Nous ne sommes pas responsables de",
      "any_loss_resulting_from_unauthorized_access_to_your_account_any_interruption_or_unavailability_of_the_app_any_errors_or_inaccuracies_in_information_provided_by_users":
          '''* Toute perte résultant d'un accès non autorisé à votre compte.
* Toute interruption ou indisponibilité de l'application.
* Toute erreur ou inexactitude dans les informations fournies par les utilisateurs.''',
      "by_using_the_app_you_consent_to_the_collection_storage_and_use_of_information_as_described_in_our_privacy_policy_this_includes_the_use_of_camera_to_capture_id_documents_and_selfies_location_to_verify_your_address_or_for_other_security_contacts_to_provide_certain_app_features_e_g_sending_requests":
          "En utilisant l'application, vous consentez à la collecte, au stockage et à l'utilisation des informations comme décrit dans notre Politique de Confidentialité. Cela inclut l'utilisation de :\n* Caméra : Pour capturer des documents d'identité et des selfies.\n* Localisation : Pour vérifier votre adresse ou pour d'autres raisons de sécurité.\n* Contacts : Pour fournir certaines fonctionnalités de l'application (ex. : envoi de demandes).",
      "all_intellectual_property_rights_including_trademarks_logos_and_software_are_owned_by_innovitegra_solutions_private_limited_unauthorized_use_is_strictly_prohibited":
          "Tous les droits de propriété intellectuelle, y compris les marques, logos et logiciels, sont détenus par Innovitegra Solutions Private Limited. Toute utilisation non autorisée est strictement interdite.",
      "please_accept_the_terms_and_conditions_to_continue":
          "Veuillez accepter les conditions et les termes pour continuer",
      "i_have_read_and_agree_to_the_terms_and_conditions":
          "Je suis conscient et j'accepte les conditions et les termes",
      "add_address": "Ajouter une adresse",
      "fill_in_the_address_details_below":
          "Veuillez remplir les informations suivantes",
      "building_house_number": "Numéro de bâtiment / de maison",
      "address_line_1": "Ligne d'adresse 1",
      "address_line_2": "Ligne d'adresse 2",
      "pin_code": "Code postal",
      "country": "Pays",
      "save": "Enregistrer",
      "address_proof": "Preuve d'adresse",
      "please_select_the_type_of_address_proof":
          "Veuillez sélectionner le type de preuve d'adresse",
      "address_id_proof_number": "Numéro de preuve d'adresse",
      "address_proof_id": "Preuve d'adresse",
      "address_proof_id_number": "Numéro de preuve d'adresse",
      "fill_the_address_details": "Veuillez remplir les informations suivantes",
      "please_fill_all_the_required_fields_for_the_address_details":
          "Veuillez remplir tous les champs requis pour les informations d'adresse. Les informations d'adresse doivent être identiques à la preuve d'adresse.",
      "take_photo": "Prendre une photo",
      "choose_from_gallery": "Choisir depuis le galerie",
      "upload_address_proof_id": "Télécharger la preuve d'adresse",
      "please_select_a_address_proof_id_type":
          "Veuillez sélectionner le type de preuve d'adresse",
      "please_enter_id_proof_number":
          "Veuillez entrer le numéro de preuve d'adresse",
      "please_upload_a_address_proof_id":
          "Veuillez télécharger la preuve d'adresse",
      "please_select_a_pep_type": "Veuillez sélectionner le type de PEP",
      "please_select_a_pep_relation":
          "Veuillez sélectionner la relation de PEP",
      "please_enter_pep_position": "Veuillez entrer la position de PEP",
      "please_enter_nationality": "Veuillez entrer la nationalité",
      "set_passcode": "Définir le mot de passe",
      "this_passcode_will_be_used_to_access_your_account_please_enter_a_secure_and_memorable_passcode":
          "Ce mot de passe sera utilisé pour accéder à votre compte. Veuillez entrer un mot de passe sécurisé et facile à mémoriser.",
      "enter_passcode": "Entrer le mot de passe",
      "confirm_passcode": "Confirmer le mot de passe",
      "passcode_must_be_6_digits": "Le mot de passe doit contenir 6 chiffres",
      "passcode_must_be_numeric":
          "Le mot de passe doit contenir uniquement des chiffres",
      "passcode_must_not_be_a_commonly_used_password":
          "Le mot de passe ne doit pas être un mot de passe courant",
      "passcodes_do_not_match": "Les mots de passe ne correspondent pas",
      "please_enter_and_confirm_the_6_digit_passcode":
          "Veuillez entrer et confirmer le mot de passe 6 chiffres",
      "completed_registration": "Inscription terminée",
      "your_registration_has_been_completed_successfully":
          "Votre inscription a été complétée avec succès",
      "thank_you_for_choosing_epurse": "Merci pour votre choix d'ePurse",
      "explore": "Explorer",
      "server_unavailable": "Serveur indisponible",
      "please_try_again_later": "Veuillez réessayer plus tard.",
      "total_balance": "Solde total",
      "view_more": "Afficher plus..",
      "fashion": "Mode",
      "grocery": "Grocery",
      "travel": "Voyage",
      "food": "Nourriture",
      "others": "Autres",
      "payments": "Paiements",
      "top_up": "Recharger",
      "banking": "Banque",
      "manage_card": "Gérer la carte",
      "other_services": "Autres services",
      "mobile_recharge": "Recharger le mobile",
      "pay_bills": "Payer les factures",
      "pay_tax": "Payer les taxes",
      "atm_locator": "Localiser les distributeurs",
      "see_all": "Voir tous",
      "child_services": "Services pour enfants",
      "child_cards": "Cartes pour enfants",
      "child_accounts": "Comptes pour enfants",
      "top_up_child": "Recharger le compte pour enfants",
      "child_transactions": "Transactions pour enfants",
    },
  };

  String get(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }

  static List<Locale> supportedLocales = const [
    Locale('en'),
    Locale('fa'),
    Locale('ar'),
    Locale('fr'),
  ];
}
