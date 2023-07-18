import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_signed_user_response_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class GetSignedUserResponseModel {
  final String email;
  final String storeName;
  final String machineSerialNumber;
  final String phoneNumber;

  const GetSignedUserResponseModel({
    required this.email,
    required this.storeName,
    required this.machineSerialNumber,
    required this.phoneNumber,
  });

  factory GetSignedUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetSignedUserResponseModelFromJson(json);
}
