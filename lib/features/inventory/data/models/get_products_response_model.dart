import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/inventory/data/models/product_model.dart';

part 'get_products_response_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class GetProductResponseModel {
  final List<ProductModel> products;

  const GetProductResponseModel({
    required this.products,
  });

  factory GetProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetProductResponseModelFromJson(json);
}
