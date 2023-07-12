import 'package:dartz/dartz.dart';
import 'package:grabber/core/failures.dart';
import 'package:grabber/features/inventory/data/datasources/inventory_datasource.dart';
import 'package:grabber/features/inventory/data/mappers/product_size_mapper.dart';
import 'package:grabber/features/inventory/data/models/create_product_body_model.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';
import 'package:grabber/features/inventory/domain/repositories/inventory_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: InventoryRepository)
class InventoryRepositoryImpl implements InventoryRepository {
  final InventoryDatasource datasource;

  const InventoryRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<Either<Failure, List<Product>>> getProductsList() async {
    try {
      final model = await datasource.getProductsList();
      return Right(
        model.map((productModel) => productModel.toEntity()).toList(),
      );
    } catch (e) {
      return Left(UnhandledFailure(message: e.toString()));
    }
  }

  @override
  Future<Option<Failure>> createProduct({
    required Product product,
  }) async {
    try {
      await datasource.createProduct(
        body: _createBodyModel(product),
      );
      return const None();
    } catch (e) {
      return Some(UnhandledFailure(message: e.toString()));
    }
  }

  @override
  Future<Option<Failure>> editProduct({
    required Product product,
  }) async {
    try {
      await datasource.editProduct(
        productId: product.id,
        body: _createBodyModel(product),
      );
      return const None();
    } catch (e) {
      return Some(UnhandledFailure(message: e.toString()));
    }
  }

  @override
  Future<Option<Failure>> deleteProduct({
    required String productId,
  }) async {
    try {
      await datasource.deleteProduct(
        productId: productId,
      );
      return const None();
    } catch (e) {
      return Some(UnhandledFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getAvailablePositions() async {
    try {
      final result = await datasource.getAvailablePositions();
      return Right(result);
    } catch (e) {
      return Left(UnhandledFailure(message: e.toString()));
    }
  }

  CreateProductBodyModel _createBodyModel(Product product) {
    return CreateProductBodyModel(
      productName: product.name,
      productDescription: product.description,
      productPrice: product.price,
      peso: product.weigth,
      size: ProductSizeMapper.toModel(
        product.size,
      ),
      positionX: int.parse(product.position[0]),
      positionY: int.parse(product.position[1]),
      amount: product.amount,
      modifiedByUser: product.modifiedByUser,
    );
  }
}
