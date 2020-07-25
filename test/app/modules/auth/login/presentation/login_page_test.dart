import 'package:chat_websocket/app/infrastructure/dependency_injection/dependency_injection_config.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/pages/login_page.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/usecases/i_login_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';

import '../../../../../helper/basic_app_test_start.dart';
import '../../../../../mock/mock_navigator_observer.dart';

class LoginUserMock extends Mock implements ILoginUser {}

Future<void> main() async {
  startBasicAppTest();
  ILoginUser loginUser;
  NavigatorObserver mockNavigator;

  setUp(() {
    loginUser = LoginUserMock();
    mockNavigator = MockNavigatorObserver();
    GetIt.instance.registerFactory<ILoginUser>(() => loginUser);
  });

  testWidgets('should login not found', (WidgetTester tester) async {
    when(loginUser.execute(any)).thenAnswer((_) async => left(LoginFailure.userNotFound()));

    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    var login = find.widgetWithText(TextFormField, 'Login');
    await tester.enterText(login, 'rodrigo@teste.com.br');

    var senha = find.widgetWithText(TextFormField, 'Senha');
    await tester.enterText(senha, 'teste');

    final btn = find.widgetWithText(RaisedButton, 'Entrar');
    await tester.tap(btn);

    await tester.pumpAndSettle();

    expect(find.byType(SnackBar), findsOneWidget);
    expect(find.text('Usuário ou senha inválidos'), findsOneWidget);
  });

  testWidgets('should login generic error', (WidgetTester tester) async {
    when(loginUser.execute(any)).thenAnswer((_) async => left(LoginFailure.serverError(message: 'ERROR')));

    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    var login = find.widgetWithText(TextFormField, 'Login');
    await tester.enterText(login, 'rodrigo@teste.com.br');

    var senha = find.widgetWithText(TextFormField, 'Senha');
    await tester.enterText(senha, 'teste');

    final btn = find.widgetWithText(RaisedButton, 'Entrar');
    await tester.tap(btn);

    await tester.pumpAndSettle();

    expect(find.byType(SnackBar), findsOneWidget);
    expect(find.text('ERROR'), findsOneWidget);
  });

  testWidgets('should login success', (WidgetTester tester) async {
    when(loginUser.execute(any)).thenAnswer((_) async => right(User()));

    await tester.pumpWidget(MaterialApp(
      home: LoginPage(),
      navigatorObservers: [mockNavigator],
    ));

    var login = find.widgetWithText(TextFormField, 'Login');
    await tester.enterText(login, 'rodrigo@teste.com.br');

    var senha = find.widgetWithText(TextFormField, 'Senha');
    await tester.enterText(senha, 'teste');

    final btn = find.widgetWithText(RaisedButton, 'Entrar');
    await tester.tap(btn);

    await tester.pumpAndSettle();
    verify(mockNavigator.didPush(any, any));
  });
}
