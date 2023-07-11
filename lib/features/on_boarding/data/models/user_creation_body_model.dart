import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_creation_body_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class UserCreationBodyModel {
  final String username;
  final String passwordHash;
  final String email;
  final String storeName;
  final String personalName;
  final String machineSerialNumber;
  final String phoneNumber;
  final String userRole;

  const UserCreationBodyModel({
    required this.username,
    required this.passwordHash,
    required this.email,
    required this.storeName,
    required this.personalName,
    required this.machineSerialNumber,
    required this.phoneNumber,
    required this.userRole,
  });

  factory UserCreationBodyModel.fromJson(Map<String, dynamic> json) =>
      _$UserCreationBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserCreationBodyModelToJson(this);
}
