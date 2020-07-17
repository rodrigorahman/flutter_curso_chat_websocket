import 'package:get_it/get_it.dart';

typedef RegisterLazy<T> = T Function();

class InstanceFactory {

  InstanceFactory._();
  static GetIt _getIt = GetIt.instance;
  // static InstanceFactory _instance;
  // static InstanceFactory get instance => _instance ??= InstanceFactory._();

  static T get<T>(){
    return _getIt.get<T>();
  }

  void registerLazySingleton<T>(RegisterLazy<T> instance) {
    _getIt.registerLazySingleton<T>(() => instance());
  }

  void registerSingleton<T>(T instance) {
    _getIt.registerSingleton<T>(instance);
  }

}