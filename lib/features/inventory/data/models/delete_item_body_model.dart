import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_item_body_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createFactory: false,
)
class DeleteItemBodyModel {
  final String modifiedByUser;

  const DeleteItemBodyModel({
    required this.modifiedByUser,
  });

  Map<String, dynamic> toJson() => _$DeleteItemBodyModelToJson(this);
}
