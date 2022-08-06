import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:upnati/core/config/injectable_config.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: false, // default
  asExtension: false, // default
)
configureDependencies(String environment) =>
    $initGetIt(GetIt.I, environment: environment);
