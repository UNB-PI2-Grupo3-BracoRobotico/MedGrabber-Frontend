import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_email_body_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
)
class UpdateEmailBodyResponse {
  final String email;

  const UpdateEmailBodyResponse({
    required this.email,
  });

  factory UpdateEmailBodyResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmailBodyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateEmailBodyResponseToJson(this);
}
