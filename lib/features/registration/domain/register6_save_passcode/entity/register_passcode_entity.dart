import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_passcode_entity.freezed.dart';

@freezed
class SavePasscodeEntity with _$SavePasscodeEntity {
  const factory SavePasscodeEntity({
    required int userId,
    required String userRef,
    required String authStatus,
  }) = _SavePasscodeEntity;
}
