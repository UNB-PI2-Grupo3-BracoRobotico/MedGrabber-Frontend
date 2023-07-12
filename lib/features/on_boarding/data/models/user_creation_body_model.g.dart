// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_creation_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCreationBodyModel _$UserCreationBodyModelFromJson(
        Map<String, dynamic> json) =>
    UserCreationBodyModel(
      firebaseUid: json['firebase_uid'] as String,
      email: json['email'] as String,
      storeName: json['store_name'] as String,
      machineSerialNumber: json['machine_serial_number'] as String,
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$UserCreationBodyModelToJson(
        UserCreationBodyModel instance) =>
    <String, dynamic>{
      'firebase_uid': instance.firebaseUid,
      'email': instance.email,
      'store_name': instance.storeName,
      'machine_serial_number': instance.machineSerialNumber,
      'phone_number': instance.phoneNumber,
    };
