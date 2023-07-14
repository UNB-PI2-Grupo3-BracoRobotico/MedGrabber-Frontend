// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:grabber/core/api_client.dart' as _i3;
import 'package:grabber/features/inventory/data/datasources/inventory_datasource.dart'
    as _i6;
import 'package:grabber/features/inventory/data/repositories/inventory_repository_impl.dart'
    as _i9;
import 'package:grabber/features/inventory/domain/repositories/inventory_repository.dart'
    as _i8;
import 'package:grabber/features/inventory/domain/usecases/create_item.dart'
    as _i25;
import 'package:grabber/features/inventory/domain/usecases/delete_item.dart'
    as _i26;
import 'package:grabber/features/inventory/domain/usecases/edit_item.dart'
    as _i27;
import 'package:grabber/features/inventory/domain/usecases/get_available_positions.dart'
    as _i28;
import 'package:grabber/features/inventory/domain/usecases/get_products_list.dart'
    as _i29;
import 'package:grabber/features/inventory/infra/datasources/inventory_datasource_impl.dart'
    as _i7;
import 'package:grabber/features/inventory/infra/inventory_api_service.dart'
    as _i5;
import 'package:grabber/features/inventory/infra/modules/inventory_api_service_modules.dart'
    as _i47;
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart'
    as _i31;
import 'package:grabber/features/on_boarding/data/datasources/auth_datasource.dart'
    as _i21;
import 'package:grabber/features/on_boarding/data/repositories/auth_repository_impl.dart'
    as _i24;
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart'
    as _i23;
import 'package:grabber/features/on_boarding/domain/usecases/get_signed_user.dart'
    as _i30;
import 'package:grabber/features/on_boarding/domain/usecases/reset_password.dart'
    as _i36;
import 'package:grabber/features/on_boarding/domain/usecases/sign_in.dart'
    as _i37;
import 'package:grabber/features/on_boarding/domain/usecases/sign_out.dart'
    as _i38;
import 'package:grabber/features/on_boarding/domain/usecases/sign_up.dart'
    as _i39;
import 'package:grabber/features/on_boarding/domain/usecases/validate_token.dart'
    as _i19;
import 'package:grabber/features/on_boarding/domain/usecases/verify_if_email_is_in_use.dart'
    as _i40;
import 'package:grabber/features/on_boarding/infra/auth_api_service.dart'
    as _i20;
import 'package:grabber/features/on_boarding/infra/datasources/auth_datasource_impl.dart'
    as _i22;
import 'package:grabber/features/on_boarding/infra/modules/auth_api_service_module.dart'
    as _i49;
import 'package:grabber/features/on_boarding/presentation/blocs/session_manager/session_manager_cubit.dart'
    as _i44;
import 'package:grabber/features/on_boarding/presentation/blocs/sign_up_bloc/signup_cubit.dart'
    as _i45;
import 'package:grabber/features/orders/data/datasources/order_datasource.dart'
    as _i32;
import 'package:grabber/features/orders/data/repositories/order_repository_impl.dart'
    as _i35;
import 'package:grabber/features/orders/domain/repositories/order_repository.dart'
    as _i34;
import 'package:grabber/features/orders/domain/usecases/create_order.dart'
    as _i41;
import 'package:grabber/features/orders/domain/usecases/get_orders.dart'
    as _i42;
import 'package:grabber/features/orders/infra/datasources/order_datasource_impl.dart'
    as _i33;
import 'package:grabber/features/orders/infra/modules/order_api_service_module.dart'
    as _i48;
import 'package:grabber/features/orders/infra/orders_api_service.dart' as _i10;
import 'package:grabber/features/orders/presentation/blocs/get_orders/get_orders_cubit.dart'
    as _i43;
import 'package:grabber/features/settings/data/datasources/settings_datasource.dart'
    as _i12;
import 'package:grabber/features/settings/data/repositories/settings_repository_impl.dart'
    as _i15;
import 'package:grabber/features/settings/domain/repositories/settings_repository.dart'
    as _i14;
import 'package:grabber/features/settings/domain/usecases/update_email.dart'
    as _i16;
import 'package:grabber/features/settings/domain/usecases/update_phone_number.dart'
    as _i17;
import 'package:grabber/features/settings/domain/usecases/update_store_name.dart'
    as _i18;
import 'package:grabber/features/settings/infra/datasources/settings_datasources.dart'
    as _i13;
import 'package:grabber/features/settings/infra/modules/settings_api_service_module.dart'
    as _i46;
import 'package:grabber/features/settings/infra/settings_api_service.dart'
    as _i11;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioInstance = _$DioInstance();
    final inventoryApiServiceModule = _$InventoryApiServiceModule();
    final orderApiServiceModule = _$OrderApiServiceModule();
    final settingsApiServiceModule = _$SettingsApiServiceModule();
    final authApiServiceModule = _$AuthApiServiceModule();
    gh.singleton<_i3.ApiClient>(_i3.ApiClient());
    gh.factory<_i4.Dio>(
      () => dioInstance.dioInstance,
      instanceName: 'dioInstance',
    );
    gh.factory<_i5.InventoryApiService>(() => inventoryApiServiceModule
        .getService(gh<_i4.Dio>(instanceName: 'dioInstance')));
    gh.factory<_i6.InventoryDatasource>(() =>
        _i7.InventoryDatasourceImpl(apiService: gh<_i5.InventoryApiService>()));
    gh.factory<_i8.InventoryRepository>(() =>
        _i9.InventoryRepositoryImpl(datasource: gh<_i6.InventoryDatasource>()));
    gh.factory<_i10.OrdersApiService>(() => orderApiServiceModule
        .getService(gh<_i4.Dio>(instanceName: 'dioInstance')));
    gh.factory<_i11.SettingsApiService>(() => settingsApiServiceModule
        .getService(gh<_i4.Dio>(instanceName: 'dioInstance')));
    gh.factory<_i12.SettingsDatasource>(() =>
        _i13.SettingsDatasourceImpl(apiService: gh<_i11.SettingsApiService>()));
    gh.factory<_i14.SettingsRepository>(() =>
        _i15.SettingsRepositoryImpl(datasource: gh<_i12.SettingsDatasource>()));
    gh.factory<_i16.UpdateEmail>(
        () => _i16.UpdateEmailImpl(repository: gh<_i14.SettingsRepository>()));
    gh.factory<_i17.UpdatePhoneNumber>(() =>
        _i17.UpdatePhoneNumberImpl(repository: gh<_i14.SettingsRepository>()));
    gh.factory<_i18.UpdateStoreName>(() =>
        _i18.UpdateStoreNameImpl(repository: gh<_i14.SettingsRepository>()));
    gh.factory<_i19.ValidateToken>(() => _i19.ValidateTokenImpl());
    gh.factory<_i20.AuthApiService>(() => authApiServiceModule
        .getService(gh<_i4.Dio>(instanceName: 'dioInstance')));
    gh.factory<_i21.AuthDatasource>(
        () => _i22.AuthDatasourceImpl(apiService: gh<_i20.AuthApiService>()));
    gh.lazySingleton<_i23.AuthRepository>(
        () => _i24.AuthRepositoryImpl(datasource: gh<_i21.AuthDatasource>()));
    gh.factory<_i25.CreateItem>(
        () => _i25.CreateItemImpl(repository: gh<_i8.InventoryRepository>()));
    gh.factory<_i26.DeleteItem>(
        () => _i26.DeleteItemImpl(repository: gh<_i8.InventoryRepository>()));
    gh.factory<_i27.EditProduct>(
        () => _i27.EditProductImpl(repository: gh<_i8.InventoryRepository>()));
    gh.factory<_i28.GetAvailablePositions>(() => _i28.GetAvailablePositionsImpl(
        repository: gh<_i8.InventoryRepository>()));
    gh.factory<_i29.GetProductsList>(() =>
        _i29.GetProductsListImpl(repository: gh<_i8.InventoryRepository>()));
    gh.factory<_i30.GetSignedUser>(
        () => _i30.GetSignedUserImpl(repository: gh<_i23.AuthRepository>()));
    gh.lazySingleton<_i31.HasItemCubit>(
        () => _i31.HasItemCubit(getProductsList: gh<_i29.GetProductsList>()));
    gh.factory<_i32.OrderDatasource>(() =>
        _i33.OrderDatasourceImpl(apiService: gh<_i10.OrdersApiService>()));
    gh.factory<_i34.OrderRepository>(
        () => _i35.OrderRepositoryImpl(datasource: gh<_i32.OrderDatasource>()));
    gh.factory<_i36.ResetPassword>(() =>
        _i36.ResetPasswordImpl(authRepository: gh<_i23.AuthRepository>()));
    gh.factory<_i37.SignIn>(
        () => _i37.SignInImpl(authRepository: gh<_i23.AuthRepository>()));
    gh.factory<_i38.SignOut>(
        () => _i38.SignOutImpl(repository: gh<_i23.AuthRepository>()));
    gh.factory<_i39.SignUp>(
        () => _i39.SignUpImpl(authRepository: gh<_i23.AuthRepository>()));
    gh.factory<_i40.VerifyIfEmailIsInUse>(() => _i40.VerifyIfEmailIsInUseImpl(
        authRepository: gh<_i23.AuthRepository>()));
    gh.factory<_i41.CreateOrder>(
        () => _i41.CreateOrderImpl(repository: gh<_i34.OrderRepository>()));
    gh.factory<_i42.GetOrders>(
        () => _i42.GetOrdersImpl(repository: gh<_i34.OrderRepository>()));
    gh.lazySingleton<_i43.GetOrdersCubit>(
        () => _i43.GetOrdersCubit(getOrdersUsecase: gh<_i42.GetOrders>()));
    gh.lazySingleton<_i44.SessionManagerCubit>(() => _i44.SessionManagerCubit(
          getSignedUser: gh<_i30.GetSignedUser>(),
          signOut: gh<_i38.SignOut>(),
        ));
    gh.singleton<_i45.SignupCubit>(_i45.SignupCubit(
      signUp: gh<_i39.SignUp>(),
      validateToken: gh<_i19.ValidateToken>(),
      verifyIfEmailIsInUse: gh<_i40.VerifyIfEmailIsInUse>(),
    ));
    return this;
  }
}

class _$DioInstance extends _i3.DioInstance {}

class _$SettingsApiServiceModule extends _i46.SettingsApiServiceModule {}

class _$InventoryApiServiceModule extends _i47.InventoryApiServiceModule {}

class _$OrderApiServiceModule extends _i48.OrderApiServiceModule {}

class _$AuthApiServiceModule extends _i49.AuthApiServiceModule {}
