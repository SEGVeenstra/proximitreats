// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:Proximitreats/repositories/hello_world_repository.dart'
    as _i542;
import 'package:Proximitreats/service_locator.dart' as _i1032;
import 'package:proximitreats_client/proximitreats_client.dart' as _i207;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factoryAsync<_i207.Client>(() => registerModule.client);
    gh.singletonAsync<_i542.HelloWorldRepository>(
      () async => _i542.HelloWorldRepository(await getAsync<_i207.Client>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i1032.RegisterModule {}
