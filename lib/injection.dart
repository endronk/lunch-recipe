import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:lunch_recipe/injection.iconfig.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection() {
  $initGetIt(getIt);
  getIt.registerLazySingleton(() => DataConnectionChecker());
}
