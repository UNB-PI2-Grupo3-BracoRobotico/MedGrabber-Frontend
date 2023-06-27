// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:grabber/features/inventory/domain/usecases/get_products_list.dart'
    as _i4;
import 'package:grabber/features/on_boarding/domain/usecases/create_user.dart'
    as _i3;
import 'package:grabber/features/on_boarding/domain/usecases/validate_token.dart'
    as _i7;
import 'package:grabber/features/on_boarding/pages/base_auth/bloc/signup_cubit.dart'
    as _i8;
import 'package:grabber/features/settings/domain/usecases/update_phone_number.dart'
    as _i5;
import 'package:grabber/features/settings/domain/usecases/update_store_name.dart'
    as _i6;
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
    gh.factory<_i3.CreateUser>(() => _i3.CreateUserImpl());
    gh.factory<_i4.GetProductsList>(() => _i4.GetProductsListImpl());
    gh.factory<_i5.UpdatePhoneNumber>(() => _i5.UpdatePhoneNumberImpl());
    gh.factory<_i6.UpdateStoreName>(() => _i6.UpdateStoreNameImpl());
    gh.factory<_i7.ValidateToken>(() => _i7.ValidateTokenImpl());
    gh.singleton<_i8.SignupCubit>(
        _i8.SignupCubit(validateToken: gh<_i7.ValidateToken>()));
    return this;
  }
}
