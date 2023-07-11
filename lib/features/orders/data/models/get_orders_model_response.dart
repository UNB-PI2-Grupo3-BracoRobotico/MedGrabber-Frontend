import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_model.dart';

part 'get_orders_model_response.g.dart';

@JsonSerializable(createToJson: false)
class GetOrdersModelResponse {
  final List<OrderModel> orders;

  const GetOrdersModelResponse({
    required this.orders,
  });

  factory GetOrdersModelResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersModelResponseFromJson(json);
}
