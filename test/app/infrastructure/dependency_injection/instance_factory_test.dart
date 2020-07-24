import 'package:chat_websocket/app/infrastructure/dependency_injection/dependency_injection_config.dart';
import 'package:chat_websocket/app/infrastructure/dependency_injection/instance_factory.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/cubit/login_cubit.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

Future<void> main() async {
  GetIt.I.allowReassignment=true;
  TestWidgetsFlutterBinding.ensureInitialized();
  await DotEnv().load('.env_dev');
  configureDependencies();

  test('should injection data', () async {
    final instance = InstanceFactory.get<LoginCubit>();
    expect(instance, isA<LoginCubit>());
  });

  test('should no injection instance', () {
    expect(() => InstanceFactory.get<String>(), throwsAssertionError);
  });

}
