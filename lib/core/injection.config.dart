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
    as _i5;
import 'package:grabber/features/inventory/domain/usecases/get_products_list.dart'
    as _i6;
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart'
    as _i7;
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart'
    as _i3;
import 'package:grabber/features/on_boarding/domain/usecases/create_user.dart'
    as _i4;
import 'package:grabber/features/on_boarding/domain/usecases/validate_token.dart'
    as _i11;
import 'package:grabber/features/on_boarding/presentation/pages/base_auth/sign_up_bloc/signup_cubit.dart'
    as _i12;
import 'package:grabber/features/settings/domain/usecases/update_email.dart'
    as _i8;
import 'package:grabber/features/settings/domain/usecases/update_phone_number.dart'
    as _i9;
import 'package:grabber/features/settings/domain/usecases/update_store_name.dart'
    as _i10;
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
    gh.singleton<_i3.AuthRepository>(_i3.AuthRepository());
    gh.factory<_i4.CreateUser>(() => _i4.CreateUserImpl());
    gh.factory<_i5.DeleteItem>(() => _i5.DeleteItemImpl());
    gh.factory<_i6.GetProductsList>(() => _i6.GetProductsListImpl());
    gh.lazySingleton<_i7.HasItemCubit>(
        () => _i7.HasItemCubit(getProductsList: gh<_i6.GetProductsList>()));
    gh.factory<_i8.UpdateEmail>(() => _i8.UpdateEmailImpl());
    gh.factory<_i9.UpdatePhoneNumber>(() => _i9.UpdatePhoneNumberImpl());
    gh.factory<_i10.UpdateStoreName>(() => _i10.UpdateStoreNameImpl());
    gh.factory<_i11.ValidateToken>(() => _i11.ValidateTokenImpl());
    gh.singleton<_i12.SignupCubit>(_i12.SignupCubit(
      validateToken: gh<_i11.ValidateToken>(),
      createUser: gh<_i4.CreateUser>(),
    ));
    return this;
  }
}
