import 'package:grabber/features/inventory/data/models/create_product_body_model.dart';
import 'package:grabber/features/inventory/data/models/delete_item_body_model.dart';

import '../models/product_model.dart';

abstract class InventoryDatasource {
  Future<List<ProductModel>> getProductsList();

  Future<void> createProduct({
    required CreateProductBodyModel body,
  });

  Future<void> editProduct({
    required String productId,
    required CreateProductBodyModel body,
  });

  Future<void> deleteProduct({
    required String productId,
    required DeleteItemBodyModel userId,
  });

  Future<List<String>> getAvailablePositions();
}
