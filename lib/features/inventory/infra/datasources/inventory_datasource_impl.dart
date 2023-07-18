import 'package:grabber/features/inventory/data/datasources/inventory_datasource.dart';
import 'package:grabber/features/inventory/data/models/create_product_body_model.dart';
import 'package:grabber/features/inventory/data/models/delete_item_body_model.dart';
import 'package:grabber/features/inventory/data/models/product_model.dart';
import 'package:grabber/features/inventory/infra/inventory_api_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: InventoryDatasource)
class InventoryDatasourceImpl implements InventoryDatasource {
  final InventoryApiService apiService;

  const InventoryDatasourceImpl({
    required this.apiService,
  });

  @override
  Future<List<ProductModel>> getProductsList() async {
    try {
      final result = await apiService.getProducts();
      return result.products;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> createProduct({
    required CreateProductBodyModel body,
  }) async {
    try {
      await apiService.createProduct(
        body: body,
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> editProduct({
    required String productId,
    required CreateProductBodyModel body,
  }) async {
    try {
      print(productId);
      print(body.toJson().toString());
      await apiService.editProduct(
        productId: int.parse(productId),
        body: body,
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> deleteProduct({
    required String productId,
    required DeleteItemBodyModel userId,
  }) async {
    try {
      await apiService.deleteProduct(
        productId: productId,
        body: userId,
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<String>> getAvailablePositions() async {
    try {
      final model = await apiService.getAvailablePositions();
      return model.availablePositions;
    } catch (_) {
      rethrow;
    }
  }
}
