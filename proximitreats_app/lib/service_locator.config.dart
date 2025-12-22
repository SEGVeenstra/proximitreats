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
import 'package:proximitreats_client/proximitreats_client.dart' as _i207;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.singletonAsync<_i207.Client>(
      () => registerModule.client,
      preResolve: true,
    );
    await gh.singletonAsync<_i583.GoRouter>(
      () => registerModule.appRouter(gh<_i207.Client>()),
      preResolve: true,
    );
    gh.singleton<_i425.HelloWorldRepository>(
      () => _i425.HelloWorldRepository(gh<_i207.Client>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i523.RegisterModule {}
