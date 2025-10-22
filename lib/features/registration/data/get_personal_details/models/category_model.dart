import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_personal_details/entities/category_entity.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    @JsonKey(name: 'category_name') required String categoryName,
    required String description,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

extension CategoryModelExtension on CategoryModel {
  CategoryEntity toEntity() => CategoryEntity(
        id: id,
        categoryName: categoryName,
        description: description,
      );
}
