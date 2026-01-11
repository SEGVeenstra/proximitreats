// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:injectable/injectable.dart' as _i526;
import 'package:proximitreats/repositories/hello_world_repository.dart'
    as _i425;
import 'package:proximitreats/service_locator.dart' as _i523;
import 'package:proximitreats/services/shops_service.dart' as _i737;
import 'package:proximitreats/services/user_service.dart' as _i325;
import 'package:proximitreats/ui/discover/discover_page_view_model.dart'
    as _i292;
import 'package:proximitreats/ui/root/root_shell_view_model.dart' as _i923;
import 'package:proximitreats/ui/shops/my_shops_page_view_model.dart' as _i162;
import 'package:proximitreats/ui/shops/shop_detail_page_view_model.dart'
    as _i637;
import 'package:proximitreats_client/proximitreats_client.dart' as _i207;
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart'
    as _i90;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.singleton<_i90.FlutterAuthSessionManager>(
      () => registerModule.authSessionManager,
    );
    gh.singleton<_i325.UserService>(
      () => _i325.UserService(gh<_i90.FlutterAuthSessionManager>()),
    );
    await gh.singletonAsync<_i207.Client>(
      () => registerModule.client(gh<_i90.FlutterAuthSessionManager>()),
      preResolve: true,
    );
    gh.factory<_i923.RootShellViewModel>(
      () => _i923.RootShellViewModel(gh<_i325.UserService>()),
    );
    gh.singleton<_i425.HelloWorldRepository>(
      () => _i425.HelloWorldRepository(gh<_i207.Client>()),
    );
    gh.singleton<_i737.ShopsService>(
      () => _i737.ShopsService(gh<_i207.Client>()),
    );
    gh.factoryParam<_i637.ShopDetailPageViewModel, _i207.UuidValue, dynamic>(
      (shopId, _) =>
          _i637.ShopDetailPageViewModel(gh<_i737.ShopsService>(), shopId),
    );
    await gh.singletonAsync<_i583.GoRouter>(
      () => registerModule.appRouter(gh<_i207.Client>()),
      preResolve: true,
    );
    gh.factory<_i292.DiscoverPageViewModel>(
      () => _i292.DiscoverPageViewModel(gh<_i737.ShopsService>()),
    );
    gh.factory<_i162.MyShopsPageViewModel>(
      () => _i162.MyShopsPageViewModel(gh<_i737.ShopsService>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i523.RegisterModule {}
