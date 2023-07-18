import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_creation_body_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createToJson: true,
)
class UserCreationBodyModel {
  final String firebaseUid;
  final String email;
  final String storeName;
  final String machineSerialNumber;
  final String phoneNumber;

  const UserCreationBodyModel({
    required this.firebaseUid,
    required this.email,
    required this.storeName,
    required this.machineSerialNumber,
    required this.phoneNumber,
  });

  factory UserCreationBodyModel.fromJson(Map<String, dynamic> json) =>
      _$UserCreationBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserCreationBodyModelToJson(this);
}
