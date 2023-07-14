import 'package:dio/dio.dart' hide Headers;
import 'package:grabber/features/inventory/data/models/available_positions_response_model.dart';
import 'package:grabber/features/inventory/data/models/create_product_body_model.dart';
import 'package:grabber/features/inventory/data/models/delete_item_body_model.dart';
import 'package:retrofit/retrofit.dart';

import '../data/models/get_products_response_model.dart';

part 'inventory_api_service.g.dart';

@RestApi()
abstract class InventoryApiService {
  factory InventoryApiService(
    Dio dio, {
    String baseUrl,
  }) = _InventoryApiService;

  @GET("/products/")
  @Headers({'Content-type': 'application/json'})
  Future<GetProductResponseModel> getProducts();

  @POST("/products/")
  @Headers({'Content-type': 'application/json'})
  Future<void> createProduct({
    @Body() required CreateProductBodyModel body,
  });

  @PUT("/products/{productId}")
  @Headers({'Content-type': 'application/json'})
  Future<void> editProduct({
    @Path("productId") required int productId,
    @Body() required CreateProductBodyModel body,
  });

  @DELETE("/products/{productId}")
  @Headers({'Content-type': 'application/json'})
  Future<void> deleteProduct({
    @Path("productId") required String productId,
    @Body() required DeleteItemBodyModel body,
  });

  @GET("/availablePositions")
  @Headers({'Content-type': 'application/json'})
  Future<AvailablePositionsResponseModel> getAvailablePositions();
}
