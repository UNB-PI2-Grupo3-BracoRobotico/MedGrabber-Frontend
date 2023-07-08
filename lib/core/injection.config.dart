// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:grabber/features/inventory/domain/usecases/delete_item.dart'
    as _i6;
import 'package:grabber/features/inventory/domain/usecases/get_products_list.dart'
    as _i8;
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart'
    as _i10;
import 'package:grabber/features/on_boarding/data/repositories/auth_repository_impl.dart'
    as _i4;
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart'
    as _i3;
import 'package:grabber/features/on_boarding/domain/usecases/create_user.dart'
    as _i5;
import 'package:grabber/features/on_boarding/domain/usecases/get_signed_user.dart'
    as _i9;
import 'package:grabber/features/on_boarding/domain/usecases/reset_password.dart'
    as _i11;
import 'package:grabber/features/on_boarding/domain/usecases/sign_in.dart'
    as _i12;
import 'package:grabber/features/on_boarding/domain/usecases/sign_out.dart'
    as _i13;
import 'package:grabber/features/on_boarding/domain/usecases/sign_up.dart'
    as _i14;
import 'package:grabber/features/on_boarding/domain/usecases/validate_token.dart'
    as _i18;
import 'package:grabber/features/on_boarding/domain/usecases/verify_if_email_is_in_use.dart'
    as _i19;
import 'package:grabber/features/on_boarding/presentation/blocs/session_manager/session_manager_cubit.dart'
    as _i20;
import 'package:grabber/features/on_boarding/presentation/blocs/sign_up_bloc/signup_cubit.dart'
    as _i21;
import 'package:grabber/features/orders/presentation/blocs/get_orders/get_orders_cubit.dart'
    as _i7;
import 'package:grabber/features/settings/domain/usecases/update_email.dart'
    as _i15;
import 'package:grabber/features/settings/domain/usecases/update_phone_number.dart'
    as _i16;
import 'package:grabber/features/settings/domain/usecases/update_store_name.dart'
    as _i17;
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
    gh.lazySingleton<_i3.AuthRepository>(() => _i4.AuthRepositoryImpl());
    gh.factory<_i5.CreateUser>(() => _i5.CreateUserImpl());
    gh.factory<_i6.DeleteItem>(() => _i6.DeleteItemImpl());
    gh.lazySingleton<_i7.GetOrdersCubit>(() => _i7.GetOrdersCubit());
    gh.factory<_i8.GetProductsList>(() => _i8.GetProductsListImpl());
    gh.factory<_i9.GetSignedUser>(
        () => _i9.GetSignedUserImpl(repository: gh<_i3.AuthRepository>()));
    gh.lazySingleton<_i10.HasItemCubit>(
        () => _i10.HasItemCubit(getProductsList: gh<_i8.GetProductsList>()));
    gh.factory<_i11.ResetPassword>(
        () => _i11.ResetPasswordImpl(authRepository: gh<_i3.AuthRepository>()));
    gh.factory<_i12.SignIn>(
        () => _i12.SignInImpl(authRepository: gh<_i3.AuthRepository>()));
    gh.factory<_i13.SignOut>(
        () => _i13.SignOutImpl(repository: gh<_i3.AuthRepository>()));
    gh.factory<_i14.SignUp>(
        () => _i14.SignUpImpl(authRepository: gh<_i3.AuthRepository>()));
    gh.factory<_i15.UpdateEmail>(() => _i15.UpdateEmailImpl());
    gh.factory<_i16.UpdatePhoneNumber>(() => _i16.UpdatePhoneNumberImpl());
    gh.factory<_i17.UpdateStoreName>(() => _i17.UpdateStoreNameImpl());
    gh.factory<_i18.ValidateToken>(() => _i18.ValidateTokenImpl());
    gh.factory<_i19.VerifyIfEmailIsInUse>(() => _i19.VerifyIfEmailIsInUseImpl(
        authRepository: gh<_i3.AuthRepository>()));
    gh.lazySingleton<_i20.SessionManagerCubit>(() => _i20.SessionManagerCubit(
          getSignedUser: gh<_i9.GetSignedUser>(),
          signOut: gh<_i13.SignOut>(),
        ));
    gh.singleton<_i21.SignupCubit>(_i21.SignupCubit(
      signUp: gh<_i14.SignUp>(),
      validateToken: gh<_i18.ValidateToken>(),
      createUser: gh<_i5.CreateUser>(),
      verifyIfEmailIsInUse: gh<_i19.VerifyIfEmailIsInUse>(),
    ));
    return this;
  }
}
