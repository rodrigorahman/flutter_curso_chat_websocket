import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import './dependency_injection_config.iconfig.dart';

final GetIt getIt = GetIt.instance;

@injectableInit 
void configureDependencies() => $initGetIt(getIt);