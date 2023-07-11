// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:grabber/core/api_client.dart' as _i3;
import 'package:grabber/features/inventory/domain/usecases/delete_item.dart'
    as _i6;
import 'package:grabber/features/inventory/domain/usecases/get_products_list.dart'
    as _i8;
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart'
    as _i10;
import 'package:grabber/features/on_boarding/data/repositories/auth_repository_impl.dart'
    as _i5;
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart'
    as _i4;
import 'package:grabber/features/on_boarding/domain/usecases/get_signed_user.dart'
    as _i9;
import 'package:grabber/features/on_boarding/domain/usecases/reset_password.dart'
    as _i12;
import 'package:grabber/features/on_boarding/domain/usecases/sign_in.dart'
    as _i13;
import 'package:grabber/features/on_boarding/domain/usecases/sign_out.dart'
    as _i14;
import 'package:grabber/features/on_boarding/domain/usecases/sign_up.dart'
    as _i15;
import 'package:grabber/features/on_boarding/domain/usecases/validate_token.dart'
    as _i19;
import 'package:grabber/features/on_boarding/domain/usecases/verify_if_email_is_in_use.dart'
    as _i20;
import 'package:grabber/features/on_boarding/presentation/blocs/session_manager/session_manager_cubit.dart'
    as _i25;
import 'package:grabber/features/on_boarding/presentation/blocs/sign_up_bloc/signup_cubit.dart'
    as _i26;
import 'package:grabber/features/orders/data/datasources/order_datasource.dart'
    as _i21;
import 'package:grabber/features/orders/data/repositories/order_repository_impl.dart'
    as _i24;
import 'package:grabber/features/orders/domain/repositories/order_repository.dart'
    as _i23;
import 'package:grabber/features/orders/domain/usecases/get_orders.dart'
    as _i27;
import 'package:grabber/features/orders/infra/datasources/order_datasource_impl.dart'
    as _i22;
import 'package:grabber/features/orders/infra/modules/order_api_service_module.dart'
    as _i29;
import 'package:grabber/features/orders/infra/orders_api_service.dart' as _i11;
import 'package:grabber/features/orders/presentation/blocs/get_orders/get_orders_cubit.dart'
    as _i28;
import 'package:grabber/features/settings/domain/usecases/update_email.dart'
    as _i16;
import 'package:grabber/features/settings/domain/usecases/update_phone_number.dart'
    as _i17;
import 'package:grabber/features/settings/domain/usecases/update_store_name.dart'
    as _i18;
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
    final orderApiServiceModule = _$OrderApiServiceModule();
    gh.singleton<_i3.ApiClient>(_i3.ApiClient());
    gh.lazySingleton<_i4.AuthRepository>(() => _i5.AuthRepositoryImpl());
    gh.factory<_i6.DeleteItem>(() => _i6.DeleteItemImpl());
    gh.factory<_i7.Dio>(
      () => orderApiServiceModule.dioInstance,
      instanceName: 'dioInstance',
    );
    gh.factory<_i8.GetProductsList>(() => _i8.GetProductsListImpl());
    gh.factory<_i9.GetSignedUser>(
        () => _i9.GetSignedUserImpl(repository: gh<_i4.AuthRepository>()));
    gh.lazySingleton<_i10.HasItemCubit>(
        () => _i10.HasItemCubit(getProductsList: gh<_i8.GetProductsList>()));
    gh.factory<_i11.OrdersApiService>(() => orderApiServiceModule
        .getService(gh<_i7.Dio>(instanceName: 'dioInstance')));
    gh.factory<_i12.ResetPassword>(
        () => _i12.ResetPasswordImpl(authRepository: gh<_i4.AuthRepository>()));
    gh.factory<_i13.SignIn>(
        () => _i13.SignInImpl(authRepository: gh<_i4.AuthRepository>()));
    gh.factory<_i14.SignOut>(
        () => _i14.SignOutImpl(repository: gh<_i4.AuthRepository>()));
    gh.factory<_i15.SignUp>(
        () => _i15.SignUpImpl(authRepository: gh<_i4.AuthRepository>()));
    gh.factory<_i16.UpdateEmail>(() => _i16.UpdateEmailImpl());
    gh.factory<_i17.UpdatePhoneNumber>(() => _i17.UpdatePhoneNumberImpl());
    gh.factory<_i18.UpdateStoreName>(() => _i18.UpdateStoreNameImpl());
    gh.factory<_i19.ValidateToken>(() => _i19.ValidateTokenImpl());
    gh.factory<_i20.VerifyIfEmailIsInUse>(() => _i20.VerifyIfEmailIsInUseImpl(
        authRepository: gh<_i4.AuthRepository>()));
    gh.factory<_i21.OrderDatasource>(() =>
        _i22.OrderDatasourceImpl(apiService: gh<_i11.OrdersApiService>()));
    gh.factory<_i23.OrderRepository>(
        () => _i24.OrderRepositoryImpl(datasource: gh<_i21.OrderDatasource>()));
    gh.lazySingleton<_i25.SessionManagerCubit>(() => _i25.SessionManagerCubit(
          getSignedUser: gh<_i9.GetSignedUser>(),
          signOut: gh<_i14.SignOut>(),
        ));
    gh.singleton<_i26.SignupCubit>(_i26.SignupCubit(
      signUp: gh<_i15.SignUp>(),
      validateToken: gh<_i19.ValidateToken>(),
      verifyIfEmailIsInUse: gh<_i20.VerifyIfEmailIsInUse>(),
    ));
    gh.factory<_i27.GetOrders>(
        () => _i27.GetOrdersImpl(repository: gh<_i23.OrderRepository>()));
    gh.lazySingleton<_i28.GetOrdersCubit>(
        () => _i28.GetOrdersCubit(getOrdersUsecase: gh<_i27.GetOrders>()));
    return this;
  }
}

class _$OrderApiServiceModule extends _i29.OrderApiServiceModule {}
