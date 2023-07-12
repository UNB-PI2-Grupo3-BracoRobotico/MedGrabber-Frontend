import 'package:grabber/features/inventory/domain/entities/product.dart';

abstract class ProductSizeMapper {
  static String toModel(ProductSize entity) {
    switch (entity) {
      case ProductSize.P:
        return "P";
      case ProductSize.M:
        return "M";
      case ProductSize.G:
        return "G";
      case ProductSize.unkown:
        return "M";
    }
  }

  static ProductSize toEntity(String value) {
    switch (value) {
      case "P":
        return ProductSize.P;
      case "M":
        return ProductSize.M;
      case "G":
        return ProductSize.G;
      default:
        return ProductSize.unkown;
    }
  }
}
