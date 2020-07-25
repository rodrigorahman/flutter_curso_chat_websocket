import 'package:chat_websocket/app/infrastructure/dependency_injection/dependency_injection_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

Future<void> startBasicAppTest() async {
  GetIt.I.allowReassignment = true;
  TestWidgetsFlutterBinding.ensureInitialized();
  await DotEnv().load('.env_dev');
  configureDependencies();
}
