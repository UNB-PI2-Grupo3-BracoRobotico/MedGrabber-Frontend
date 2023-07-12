import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_phone_number_body_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
)
class UpdatePhoneNumberBodyModel {
  final String phoneNumber;

  const UpdatePhoneNumberBodyModel({
    required this.phoneNumber,
  });

  factory UpdatePhoneNumberBodyModel.fromJson(Map<String, dynamic> json) =>
      _$UpdatePhoneNumberBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePhoneNumberBodyModelToJson(this);
}
