import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc_cubit_tutorial/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
configureDependencies() => getIt.init(environment: dev.name);
