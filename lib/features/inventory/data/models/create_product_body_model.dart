import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_product_body_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createToJson: true,
)
class CreateProductBodyModel {
  final String productName;
  final String productDescription;
  final double productPrice;
  final double peso;
  final String size;
  final int positionX;
  final int positionY;
  final int amount;
  final String modifiedByUser;

  const CreateProductBodyModel({
    required this.productName,
    required this.productDescription,
    required this.productPrice,
    required this.peso,
    required this.size,
    required this.positionX,
    required this.positionY,
    required this.amount,
    required this.modifiedByUser,
  });

  factory CreateProductBodyModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProductBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreateProductBodyModelToJson(this);
}
