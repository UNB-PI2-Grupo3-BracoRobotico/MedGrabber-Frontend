// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:grabber/core/api_client.dart' as _i3;
import 'package:grabber/features/inventory/domain/usecases/delete_item.dart'
    as _i4;
import 'package:grabber/features/inventory/domain/usecases/get_products_list.dart'
    as _i6;
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart'
    as _i7;
import 'package:grabber/features/on_boarding/data/datasources/auth_datasource.dart'
    as _i14;
import 'package:grabber/features/on_boarding/data/repositories/auth_repository_impl.dart'
    as _i17;
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart'
    as _i16;
import 'package:grabber/features/on_boarding/domain/usecases/get_signed_user.dart'
    as _i18;
import 'package:grabber/features/on_boarding/domain/usecases/reset_password.dart'
    as _i23;
import 'package:grabber/features/on_boarding/domain/usecases/sign_in.dart'
    as _i24;
import 'package:grabber/features/on_boarding/domain/usecases/sign_out.dart'
    as _i25;
import 'package:grabber/features/on_boarding/domain/usecases/sign_up.dart'
    as _i26;
import 'package:grabber/features/on_boarding/domain/usecases/validate_token.dart'
    as _i12;
import 'package:grabber/features/on_boarding/domain/usecases/verify_if_email_is_in_use.dart'
    as _i27;
import 'package:grabber/features/on_boarding/infra/auth_api_service.dart'
    as _i13;
import 'package:grabber/features/on_boarding/infra/datasources/auth_datasource_impl.dart'
    as _i15;
import 'package:grabber/features/on_boarding/infra/modules/auth_api_service_module.dart'
    as _i34;
import 'package:grabber/features/on_boarding/presentation/blocs/session_manager/session_manager_cubit.dart'
    as _i31;
import 'package:grabber/features/on_boarding/presentation/blocs/sign_up_bloc/signup_cubit.dart'
    as _i32;
import 'package:grabber/features/orders/data/datasources/order_datasource.dart'
    as _i19;
import 'package:grabber/features/orders/data/repositories/order_repository_impl.dart'
    as _i22;
import 'package:grabber/features/orders/domain/repositories/order_repository.dart'
    as _i21;
import 'package:grabber/features/orders/domain/usecases/create_order.dart'
    as _i28;
import 'package:grabber/features/orders/domain/usecases/get_orders.dart'
    as _i29;
import 'package:grabber/features/orders/infra/datasources/order_datasource_impl.dart'
    as _i20;
import 'package:grabber/features/orders/infra/modules/order_api_service_module.dart'
    as _i33;
import 'package:grabber/features/orders/infra/orders_api_service.dart' as _i8;
import 'package:grabber/features/orders/presentation/blocs/get_orders/get_orders_cubit.dart'
    as _i30;
import 'package:grabber/features/settings/domain/usecases/update_email.dart'
    as _i9;
import 'package:grabber/features/settings/domain/usecases/update_phone_number.dart'
    as _i10;
import 'package:grabber/features/settings/domain/usecases/update_store_name.dart'
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
    final orderApiServiceModule = _$OrderApiServiceModule();
    final authApiServiceModule = _$AuthApiServiceModule();
    gh.singleton<_i3.ApiClient>(_i3.ApiClient());
    gh.factory<_i4.DeleteItem>(() => _i4.DeleteItemImpl());
    gh.factory<_i5.Dio>(
      () => dioInstance.dioInstance,
      instanceName: 'dioInstance',
    );
    gh.factory<_i6.GetProductsList>(() => _i6.GetProductsListImpl());
    gh.lazySingleton<_i7.HasItemCubit>(
        () => _i7.HasItemCubit(getProductsList: gh<_i6.GetProductsList>()));
    gh.factory<_i8.OrdersApiService>(() => orderApiServiceModule
        .getService(gh<_i5.Dio>(instanceName: 'dioInstance')));
    gh.factory<_i9.UpdateEmail>(() => _i9.UpdateEmailImpl());
    gh.factory<_i10.UpdatePhoneNumber>(() => _i10.UpdatePhoneNumberImpl());
    gh.factory<_i11.UpdateStoreName>(() => _i11.UpdateStoreNameImpl());
    gh.factory<_i12.ValidateToken>(() => _i12.ValidateTokenImpl());
    gh.factory<_i13.AuthApiService>(() => authApiServiceModule
        .getService(gh<_i5.Dio>(instanceName: 'dioInstance')));
    gh.factory<_i14.AuthDatasource>(
        () => _i15.AuthDatasourceImpl(apiService: gh<_i13.AuthApiService>()));
    gh.lazySingleton<_i16.AuthRepository>(
        () => _i17.AuthRepositoryImpl(datasource: gh<_i14.AuthDatasource>()));
    gh.factory<_i18.GetSignedUser>(
        () => _i18.GetSignedUserImpl(repository: gh<_i16.AuthRepository>()));
    gh.factory<_i19.OrderDatasource>(
        () => _i20.OrderDatasourceImpl(apiService: gh<_i8.OrdersApiService>()));
    gh.factory<_i21.OrderRepository>(
        () => _i22.OrderRepositoryImpl(datasource: gh<_i19.OrderDatasource>()));
    gh.factory<_i23.ResetPassword>(() =>
        _i23.ResetPasswordImpl(authRepository: gh<_i16.AuthRepository>()));
    gh.factory<_i24.SignIn>(
        () => _i24.SignInImpl(authRepository: gh<_i16.AuthRepository>()));
    gh.factory<_i25.SignOut>(
        () => _i25.SignOutImpl(repository: gh<_i16.AuthRepository>()));
    gh.factory<_i26.SignUp>(
        () => _i26.SignUpImpl(authRepository: gh<_i16.AuthRepository>()));
    gh.factory<_i27.VerifyIfEmailIsInUse>(() => _i27.VerifyIfEmailIsInUseImpl(
        authRepository: gh<_i16.AuthRepository>()));
    gh.factory<_i28.CreateOrder>(
        () => _i28.CreateOrderImpl(repository: gh<_i21.OrderRepository>()));
    gh.factory<_i29.GetOrders>(
        () => _i29.GetOrdersImpl(repository: gh<_i21.OrderRepository>()));
    gh.lazySingleton<_i30.GetOrdersCubit>(
        () => _i30.GetOrdersCubit(getOrdersUsecase: gh<_i29.GetOrders>()));
    gh.lazySingleton<_i31.SessionManagerCubit>(() => _i31.SessionManagerCubit(
          getSignedUser: gh<_i18.GetSignedUser>(),
          signOut: gh<_i25.SignOut>(),
        ));
    gh.singleton<_i32.SignupCubit>(_i32.SignupCubit(
      signUp: gh<_i26.SignUp>(),
      validateToken: gh<_i12.ValidateToken>(),
      verifyIfEmailIsInUse: gh<_i27.VerifyIfEmailIsInUse>(),
    ));
    return this;
  }
}

class _$DioInstance extends _i3.DioInstance {}

class _$OrderApiServiceModule extends _i33.OrderApiServiceModule {}

class _$AuthApiServiceModule extends _i34.AuthApiServiceModule {}
