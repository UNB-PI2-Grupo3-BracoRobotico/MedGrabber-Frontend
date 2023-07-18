import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_positions_response_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class AvailablePositionsResponseModel {
  final List<String> availablePositions;

  const AvailablePositionsResponseModel({
    required this.availablePositions,
  });

  factory AvailablePositionsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AvailablePositionsResponseModelFromJson(json);
}
