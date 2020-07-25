import 'package:bloc_test/bloc_test.dart';
import 'package:chat_websocket/app/infrastructure/dependency_injection/dependency_injection_config.dart';
import 'package:chat_websocket/app/modules/auth/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../mock/mock_navigator_observer.dart';

void main() {
  NavigatorObserver mockNavigator;

  setUp(() async {
    GetIt.I.allowReassignment = true;
    TestWidgetsFlutterBinding.ensureInitialized();
    await DotEnv().load('.env_dev');
    configureDependencies();
    mockNavigator = MockNavigatorObserver();
  });

  blocTest<AuthCubit, AuthState>(
    'should open app without login ',
    build: () {
      SharedPreferences.setMockInitialValues({});
      return AuthCubit();
    },
    act: (cubit) => cubit.checkIsLogged(),
    expect: [
      AuthState.unauthenticate()
    ]
  );


  blocTest<AuthCubit, AuthState>(
    'should open app with login ',
    build: () {
      SharedPreferences.setMockInitialValues({'userLogged': ''});
      return AuthCubit();
    },
    act: (cubit) => cubit.checkIsLogged(),
    expect: [
      AuthState.authenticate()
    ]
  );

}
