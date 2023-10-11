import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/infrastructure/injection_dependencies/injection_dependencies.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => getIt.init();
