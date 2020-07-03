import 'package:bank_for_all/services/shared_prefs.dart';
import 'package:get_it/get_it.dart';

import '../services/auth_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => AuthService());
  locator.registerLazySingleton(() => SharedPrefs());
}
