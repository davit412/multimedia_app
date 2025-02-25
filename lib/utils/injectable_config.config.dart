// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:multimedia_app/data/datasource/datasource.dart' as _i3;
import 'package:multimedia_app/data/repositories/repository.dart' as _i4;
import 'package:multimedia_app/services/service.dart' as _i5;

void $initGetIt(_i1.GetIt getIt,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(getIt, environment, environmentFilter);
  gh.factory<_i3.Datasource>(() => _i3.Datasource.create());
  gh.factory<_i4.Repository>(() => _i4.Repository(getIt<_i3.Datasource>()));
  gh.factory<_i5.Service>(() => _i5.Service(getIt<_i4.Repository>()));
}
