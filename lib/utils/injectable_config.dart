import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:multimedia_app/utils/injectable_config.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);
