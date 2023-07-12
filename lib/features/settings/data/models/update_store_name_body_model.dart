import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_store_name_body_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
)
class UpdateStoreNameBodyModel {
  final String storeName;

  const UpdateStoreNameBodyModel({
    required this.storeName,
  });

  factory UpdateStoreNameBodyModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateStoreNameBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateStoreNameBodyModelToJson(this);
}
