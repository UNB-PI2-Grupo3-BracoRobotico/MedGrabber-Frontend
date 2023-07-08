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
    as _i3;
import 'package:grabber/features/inventory/domain/usecases/get_products_list.dart'
    as _i5;
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart'
    as _i6;
import 'package:grabber/features/orders/presentation/blocs/get_orders/get_orders_cubit.dart'
    as _i4;
import 'package:grabber/features/settings/domain/usecases/update_email.dart'
    as _i7;
import 'package:grabber/features/settings/domain/usecases/update_phone_number.dart'
    as _i8;
import 'package:grabber/features/settings/domain/usecases/update_store_name.dart'
    as _i9;
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
    gh.factory<_i3.DeleteItem>(() => _i3.DeleteItemImpl());
    gh.lazySingleton<_i4.GetOrdersCubit>(() => _i4.GetOrdersCubit());
    gh.factory<_i5.GetProductsList>(() => _i5.GetProductsListImpl());
    gh.lazySingleton<_i6.HasItemCubit>(
        () => _i6.HasItemCubit(getProductsList: gh<_i5.GetProductsList>()));
    gh.factory<_i7.UpdateEmail>(() => _i7.UpdateEmailImpl());
    gh.factory<_i8.UpdatePhoneNumber>(() => _i8.UpdatePhoneNumberImpl());
    gh.factory<_i9.UpdateStoreName>(() => _i9.UpdateStoreNameImpl());
    return this;
  }
}
